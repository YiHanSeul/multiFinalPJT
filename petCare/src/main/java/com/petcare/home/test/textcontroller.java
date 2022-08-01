package com.petcare.home.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class textcontroller {
	
	@GetMapping("/index3")
	public String index3() {
		return "index3";
	}
}
