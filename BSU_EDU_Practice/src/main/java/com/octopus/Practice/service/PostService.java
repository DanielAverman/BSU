package com.octopus.Practice.service;

import com.octopus.Practice.Model.PostModel;
import com.octopus.Practice.dao.PostDao;
import com.octopus.Practice.mapper.PostMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
@Slf4j
@RequiredArgsConstructor
public class PostService {
    private final PostMapper mapper;
    private final PostDao postDao;
    public List<PostModel> getAllPosts() {
       log.debug("Getting all users.");
        return mapper.fromDtoList(postDao.getAllPosts());
    }
}
