package com.petcare.home.api;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ChatController {

	@GetMapping("/chat")
	public String chat(Locale locale, Model model) {
		return "chat";
	}
	
	
}
