package com.petcare.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/join")
	public String regist() {
		return "join";
	}
	
}
