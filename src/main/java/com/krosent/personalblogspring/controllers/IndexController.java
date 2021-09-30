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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Iterator;
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
    public String createOneUser(@RequestParam(defaultValue = "0") Integer page,
                                @RequestParam(defaultValue = "10") Integer pageSize, ModelMap model) {
        // return first page
        Pageable pageable = PageRequest.of(page, pageSize);
        Page<Post> pageResult = postRepository.findAll(pageable);

        // pagination control

        model.addAttribute("posts", pageResult.getContent());
        model.addAttribute("featured_post", postRepository.findFeaturedPost());
        model.addAttribute("has_previous", pageResult.hasPrevious());
        model.addAttribute("has_next", pageResult.hasNext());
        model.addAttribute("number_of_pages", pageResult.getTotalPages());
        model.addAttribute("current_page", pageable.getPageNumber());

        System.out.println("Has previous: " + pageResult.hasPrevious());
        System.out.println("Has next: " + pageResult.hasNext());
        System.out.println("Number Of Pages: " + pageResult.getTotalPages());
        System.out.println("Current Page: " + pageable.getPageNumber());
        return "main-page";
    }
}
