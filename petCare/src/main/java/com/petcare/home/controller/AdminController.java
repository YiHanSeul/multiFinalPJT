package com.petcare.home.controller;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	
	@Autowired
	ResourceLoader resourceLoader;
	@GetMapping("/ocr")
	public String ocrTest(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		/*
		 * System.out.println(resourceLoader.getResource("classpath:static").getURI());
		 * System.out.println(Path.of(resourceLoader.getResource("classpath:static").
		 * getURI()));
		 */
		//String path = Path.of(resourceLoader.getResource("classpath:static").getURI()).toString();
		String path = request.getParameter("path");
		System.out.println(path);
		
		String res = new ocr().ocrTest(path , "");
		
	}
	
}
