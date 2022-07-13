package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.petcare.home.model.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String welcomeAdminPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String AdminId = request.getParameter("AdminId");
		String AdminPw = request.getParameter("AdminPw");
		
		session.setAttribute("AdminId", AdminId);
		session.setAttribute("AdminPw", AdminPw);
		
		if(AdminId.equals(adminService.AdminChk(AdminId).getAdminid()) && AdminPw.equals(adminService.AdminChk(AdminId).getAdminpw())) {
			return "adminlogin";
		}
		return "login";
		
	}
}
