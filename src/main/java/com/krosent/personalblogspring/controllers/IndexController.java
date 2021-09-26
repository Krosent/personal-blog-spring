package com.krosent.personalblogspring.controllers;

import com.krosent.personalblogspring.models.User;
import com.krosent.personalblogspring.repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class IndexController {
    private final UserRepository userRepository;
    public IndexController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping("/")
    public User createOneUser() {
        return null;
    }
}
