package com.krosent.personalblogspring;

import com.krosent.personalblogspring.models.User;
import com.krosent.personalblogspring.repositories.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

//@RunWith(SpringRunner.class)
@SpringBootTest
class PersonalBlogSpringApplicationTests {

    //@Autowired
    //private UserRepository userRepository;

    @Test
    void contextLoads() {
    }

   // @Test
    //void checkTestUserModelCreation() {
//        User usr = new User("krosent2@gmail.com", "Artyom", "Kuznetsov", "1234", 1);
//        userRepository.save(usr);
//
//        assert (userRepository.count() == 1);
    //}

}
