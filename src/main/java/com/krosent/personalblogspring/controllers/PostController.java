package com.krosent.personalblogspring.controllers;

import com.krosent.personalblogspring.repositories.PostRepository;
import org.springframework.stereotype.Controller;

@Controller
public class PostController {
    private final PostRepository postRepository;

    public PostController(PostRepository postRepository) {
        this.postRepository = postRepository;
    }
}
