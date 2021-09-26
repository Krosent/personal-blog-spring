package com.krosent.personalblogspring.repositories;

import com.krosent.personalblogspring.models.Post;
import com.krosent.personalblogspring.models.User;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PostRepository extends CrudRepository<Post, Long> {
    @Query("SELECT * FROM post WHERE author_id = :userId")
    public List<Post> findAllPostsOfTheUser(Long userId);

}