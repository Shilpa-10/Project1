package org.spring.start.repository;

import java.util.Optional;

import org.spring.start.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
	
public User findByUsernameAndPassword(String username,String password);

public User findById(int Id);

}
