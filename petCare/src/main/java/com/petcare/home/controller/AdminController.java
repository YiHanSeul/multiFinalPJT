package com.petcare.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/api")
	public String api() {
		return "api";
	}
//	@Autowired
//	AdminService adminService;
//	
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
