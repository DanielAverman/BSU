package com.octopus.Practice.controller;

import com.octopus.Practice.Model.PostModel;
import com.octopus.Practice.PracticeApplication;
import com.octopus.Practice.service.PostService;
import org.slf4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping("/posts")
public class Controller {
    private static final Logger log = org.slf4j.LoggerFactory.getLogger(PracticeApplication.class);
    private final PostService postService;

    public Controller(PostService postService){this.postService = postService;}

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ResponseEntity<List<PostModel>> getPostList() {
        try {
            log.debug("Joint to section");
            List<PostModel> posts = postService.getAllPosts();
            log.debug("All posts: {}.", posts);
            return new ResponseEntity<>(posts, HttpStatus.OK);
        } catch (Exception ex) {
            log.debug("Exception while getting all posts: {}.", ex.getMessage());
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Getting all users failed.", ex);
        }
    }
}
