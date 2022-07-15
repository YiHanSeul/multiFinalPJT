package com.petcare.home.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.petcare.home.api.ocr;
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
	
	
	@Autowired
	ResourceLoader resourceLoader;
	@GetMapping("/ocr")
	public String ocrTest(Model model) throws IOException {
		System.out.println(resourceLoader.getResource("classpath:static").getURI());
		System.out.println(Path.of(resourceLoader.getResource("classpath:static").getURI()));
		String path = Path.of(resourceLoader.getResource("classpath:static").getURI()).toString();
		System.out.println(path);
		String res = new ocr().ocrTest(path);
		
		model.addAttribute("res", res);
		return "ocrRes";
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
