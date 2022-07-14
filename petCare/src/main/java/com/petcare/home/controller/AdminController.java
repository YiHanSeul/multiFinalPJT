package com.petcare.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/api")
	public String api() {
		return "api";
	}
	
	@RequestMapping(value="/admincheck")
	public String adminCheck(Model model) {
		model.addAttribute("list", adminService.HospitalVChk());
	
		return "adminCheck";
	}
	
	
	

//	@RequestMapping(value="/", method=RequestMethod.GET)
//	public String loginPage() {
//		return "login";
//	}
//	
//	@RequestMapping(value="/login", method=RequestMethod.POST)
//	public String welcomeAdminPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//		String AdminId = request.getParameter("AdminId");
//		String AdminPw = request.getParameter("AdminPw");
//		
//		session.setAttribute("AdminId", AdminId);
//		session.setAttribute("AdminPw", AdminPw);
//		
//		if(AdminId.equals(adminService.AdminChk(AdminId).getAdminid()) && AdminPw.equals(adminService.AdminChk(AdminId).getAdminpw())) {
//			return "adminlogin";
//		}
//		return "login";
//		
//	}

}
