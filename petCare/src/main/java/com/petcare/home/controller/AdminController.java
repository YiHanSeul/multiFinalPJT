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
	
	@GetMapping("/adminCheck")
	public String adminCheck(Model model) {
		model.addAttribute("list", adminService.HospitalVChk());
		System.out.println( adminService.HospitalVChk());
		return "adminCheck";
	}

	@GetMapping("/adminCheckres")
	public String adminCheckres(Model model, String hospitalKey){
		int res = adminService.updateHospitalVChk(hospitalKey);
		if(res>0) {
			model.addAttribute("dto", adminService.HospitalVChk());
			return "adminCheck";
		} 
		else {
			return "login";
		}

	}

}
