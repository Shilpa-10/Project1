package org.spring.start.services;

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

}
