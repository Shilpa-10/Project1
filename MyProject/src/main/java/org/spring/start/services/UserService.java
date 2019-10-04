package org.spring.start.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.spring.start.model.User;
import org.spring.start.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void saveMyUser(User user) {

		userRepository.save(user);
	}

	public List<User> showAllUsers(){
		List<User> users= new ArrayList<User>();
		for(User user: userRepository.findAll()) {
			users.add(user);
		}
		return users;
		
	}
	
	public void deleteMyUser(int id) {
		userRepository.deleteById(id);
	}
	
	public  User editUser(int id) {
		
	
		User obj =  userRepository.findById(id);
		obj.getAge();
		return userRepository.findById(id);
	}
	
	public User findByUsernameAndPassword(String username,String password) {
		return userRepository.findByUsernameAndPassword(username,password);
		
	}

	 
}
