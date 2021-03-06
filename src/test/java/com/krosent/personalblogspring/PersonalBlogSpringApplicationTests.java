package com.krosent.personalblogspring;

import com.krosent.personalblogspring.models.Post;
import com.krosent.personalblogspring.models.User;
import com.krosent.personalblogspring.repositories.PostRepository;
import com.krosent.personalblogspring.repositories.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
class PersonalBlogSpringApplicationTests {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PostRepository postRepository;

    @Test
    void contextLoads() {
    }

    @Test
    void checkTestUserModelCreation() {
        User usr = new User("krosent2@gmail.com", "Artyom", "Kuznetsov", "1234", 1);
        userRepository.save(usr);

        assert (userRepository.findById(usr.getId()).isPresent());
    }

    @Test
    void verifyUserHasPost() {
        User usr = new User("krosent2@gmail.com", "Artyom", "Kuznetsov", "1234", 1);

        userRepository.save(usr);


        Post post = new Post("some title", "hehe",  usr.getId(), new Date(), "detailed", false);

        postRepository.save(post);

        List<Post> posts = postRepository.findAllPostsOfTheUser(usr.getId());
        assert(postRepository.findAllPostsOfTheUser(usr.getId()).size() == 1);
    }

    @Test
    void verifyPostHasUser() {
        User usr = new User("krosent2@gmail.com", "Artyom", "Kuznetsov", "1234", 1);
        userRepository.save(usr);

        Post post = new Post("some title", "hehe", usr.getId(), new Date(), "detailed", false);
        postRepository.save(post);

        assert(userRepository.getThisPostAuthor(post.getAuthor_id()) != null);
    }

}