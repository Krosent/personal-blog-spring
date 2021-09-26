package com.krosent.personalblogspring.controllers;

import com.krosent.personalblogspring.models.User;
import com.krosent.personalblogspring.repositories.UserRepository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {
    //private final UserRepository userRepository;
    //public IndexController(UserRepository userRepository) {
       // this.userRepository = userRepository;
    //}

//    @RequestMapping("/")
//    public User createOneUser() {
//        User usr = new User("krosent2@gmail.com", "Artyom", "Kuznetsov", "1234", 1);
//        userRepository.save(usr);
//        return usr;
//    }
}
