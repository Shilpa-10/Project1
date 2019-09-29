package org.spring.start.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyAppController {
	 
	@RequestMapping("/index")
	public String hello() {
		return "home";
	}
	
	@RequestMapping("/welcome")
	public String Welcome() {
		return "Welcomepage";
	}

}
