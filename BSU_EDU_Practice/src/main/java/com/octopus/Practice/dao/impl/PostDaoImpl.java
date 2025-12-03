package com.octopus.Practice.dao.impl;

import com.octopus.Practice.dao.PostDao;
import com.octopus.Practice.dao.dto.PostDto;
import lombok.RequiredArgsConstructor;
import org.flywaydb.core.internal.database.h2.H2Connection;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class PostDaoImpl implements PostDao {

    private final String SELECT_ALL_POSTS = "SELECT * FROM POST";
    private final NamedParameterJdbcTemplate jdbcTemplate;

    @Override
    public List<PostDto> getAllPosts() {
        return jdbcTemplate.query(SELECT_ALL_POSTS, (rs, rowNum) ->
               new PostDto()
                    .setId(rs.getInt("id"))
                    .setTitle(rs.getString("title"))
                    .setText(rs.getString("text"))
                    .setLikes(rs.getInt("likes"))
                    .setPhotoURL(rs.getString("photo_url"))
                    .setCreatedAt(rs.getDate("created_at"))
                    .setModifiedAt(rs.getDate("modified_at")));
    }
}
