package com.krosent.personalblogspring.repositories;

import com.krosent.personalblogspring.models.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
}
