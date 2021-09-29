package com.krosent.personalblogspring.controllers;

import com.krosent.personalblogspring.models.Post;
import com.krosent.personalblogspring.models.User;
import com.krosent.personalblogspring.repositories.PostRepository;
import com.krosent.personalblogspring.repositories.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

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
        // return first page
        Pageable firstPageWithTenElements = PageRequest.of(0, 10);
        Page<Post> postsPaged = postRepository.findAll(firstPageWithTenElements);

        List<Post> posts = postsPaged.getContent();
        // pagination control


        model.addAttribute("posts", posts);
        model.addAttribute("featured_post", postRepository.findFeaturedPost());
        model.addAttribute("has_previous", postsPaged.hasPrevious());
        model.addAttribute("has_next", postsPaged.hasNext());
        model.addAttribute("numberOfPages", postsPaged.getTotalPages());
        // model.addAttribute("current_page", postsPaged.getPa)
        return "main-page";
    }
}
