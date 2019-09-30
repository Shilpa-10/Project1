package org.spring.start.controller;

import javax.servlet.http.HttpServletRequest;

import org.spring.start.model.User;
import org.spring.start.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
