package com.krosent.personalblogspring.repositories;

import com.krosent.personalblogspring.models.Post;
import com.krosent.personalblogspring.models.User;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Long> {
    @Query("SELECT * FROM usr WHERE id=:authorId")
    public User getThisPostAuthor(Long authorId);
}
