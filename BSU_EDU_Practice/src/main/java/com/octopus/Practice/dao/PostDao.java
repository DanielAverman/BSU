package com.octopus.Practice.dao;

import com.octopus.Practice.dao.dto.PostDto;

import java.util.List;

public interface PostDao {

    List<PostDto> getAllPosts();
}
