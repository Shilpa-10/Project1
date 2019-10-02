package org.spring.start.controller;

import javax.servlet.http.HttpServletRequest;

import org.spring.start.model.User;
import org.spring.start.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyAppController {
	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String hello() {
		return "home";
	}

	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "Welcomepage";
	}

	@RequestMapping("/register")
	public String reg(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "Register";
	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request) {
		userService.saveMyUser(user);
		return "Welcomepage";

	}
	
	@GetMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		//request.setAttribute("mode", "MODE_AllUSERS");
		return "showUser"; 
	}
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		return "showUser";
	}
	
	@RequestMapping("/edit-user")
	 
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("users",userService.editUser(id)); 
		return "updateUser";
	}
	
	/*public String editSave( @ModelAttribute  User user,BindingResult bindingResult,HttpServletRequest request) {
		User rec = userService.editUser(user.getId());
		rec.setUsername(user.getUsername());
		rec.setFirstname(user.getFirstname());
		rec.setLastname( user.getLastname());
		rec.setAge(user.getAge());
		rec.setPassword(user.getPassword());
		userService.saveMyUser(rec);

		return "updateUser";
	}*/
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login-user")
	public String loginUser(@ModelAttribute User user,HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(),user.getPassword())!=null) {
			return "home";
		}
		else {
		request.setAttribute("error", "Invalid username or password");
		return "login";
		
	}

} }
