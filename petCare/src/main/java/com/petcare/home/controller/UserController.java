package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	//회원가입 폼으로 넘어감
	@GetMapping("/join")
	public String regist() {
		return "join";
	}
	@GetMapping("/calendar")
	public String calendarPage() {
		return "calendar";
	}
	
	
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@PostMapping("/loginForm")
	public String loginForm(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String UserId = request.getParameter("UserId");
		String UserPw = request.getParameter("UserPw");
		
		session.setAttribute("UserId", UserId);
		session.setAttribute("UserPw", UserPw);
		
		if(UserId.equals(userService.UserChk(UserId).getUserid())&& UserPw.equals(userService.UserChk(UserId).getUserpw())) {
			model.addAttribute("UserId",UserId);
			
			return "index";
		}
		return "login";
		
	}
}
