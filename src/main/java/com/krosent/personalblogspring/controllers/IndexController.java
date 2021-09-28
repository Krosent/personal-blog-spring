package com.krosent.personalblogspring.controllers;

import com.krosent.personalblogspring.models.User;
import com.krosent.personalblogspring.repositories.PostRepository;
import com.krosent.personalblogspring.repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class IndexController {
    private final UserRepository userRepository;
    private final PostRepository postRepository;
    public IndexController(UserRepository userRepository, PostRepository postRepository) {
        this.userRepository = userRepository;
        this.postRepository = postRepository;
    }

    @RequestMapping("/")
    public String createOneUser(ModelMap model) {
        model.addAttribute("posts", postRepository.findAll());
        model.addAttribute("featured_post", postRepository.findFeaturedPost());
        return "main-page";
    }
}
