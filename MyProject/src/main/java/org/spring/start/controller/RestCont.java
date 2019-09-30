package org.spring.start.controller;

import org.spring.start.model.User;
import org.spring.start.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestCont {
	@Autowired
	private UserService userService;
	
	@GetMapping("/hi")

	public String hey() {
		return "This is home PAge";
	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname,@RequestParam int age, @RequestParam String password) {
		User user = new User(username,firstname,lastname,age,password);
		userService.saveMyUser(user);
		
		return "UserSaved";
	}

}
