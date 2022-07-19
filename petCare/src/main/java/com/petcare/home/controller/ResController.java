package com.petcare.home.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.ResDto;
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
		//String userid = (String)session.getAttribute("userid");
		//String hospitalid = (String)session.getAttribute("HospitalId");
		//model.addAttribute("userinfo", userservice.userSelect(userid)); 유저의 
		//model.addAttribute("hospitalinfo", hospitalservice.HosSelect(hospitalid)); 병원의 아이디와 이름을 받아오기
		return "calendar";
	}	
	
	@GetMapping("/insertRes")
	public String insertRes(ResDto dto, HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		if(resservice.insertRes(dto) > 0) {
			
			return "redirect:/user/index";
		} else {
			return "redirect:/res/calendar";
		}
	}	
}
