package com.petcare.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;

	@GetMapping("/api")
	public String api() {
		return "api";
	}	
	
	@RequestMapping(value="/admincheck")
	public String adminCheck(Model model) {
		model.addAttribute("list", adminService.HospitalVChk());
	
		return "adminCheck";
	}
	
}
