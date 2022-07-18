package com.petcare.home.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.service.AdminService;
import com.petcare.home.model.service.HospitalService;
import com.petcare.home.model.service.ResService;
import com.petcare.home.model.service.UserService;


@Controller
@RequestMapping("/res")
public class ResController {
	
	@Autowired
	private ResService resservice;
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private HospitalService hospitalservice;
	
	@GetMapping("/calendar")
	public String root(HttpSession session, Model model) {
		String userid = (String)session.getAttribute("Userid");
		model.addAttribute("userinfo", userservice.UserSelect(userid));
		model.addAttribute("hospitalinfo", hospitalservice.HospitalSelect(userid));
		
		return "calendar";
	}	

}
