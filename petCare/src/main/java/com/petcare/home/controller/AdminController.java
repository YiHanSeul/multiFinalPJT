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
	
	@RequestMapping(value="/adminCheck")
	public String adminCheck(Model model) {
		model.addAttribute("list", adminService.HospitalVChk());
	
		return "adminCheck";
	}
	
	@RequestMapping(value="/adminCheckres")
	public String adminCheckres(Model model, String hospitalKey){
		int res = adminService.updateHospitalVChk(hospitalKey);
		if(res>0) {
			return "adminCheck";
		}else {
			return "adminCheck";
		}
		
		
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
//매핑한 것과 달라도 상관없음(jsp파일이) return값이 뭘보내주는지 매핑은 찾기만 할뿐
}
