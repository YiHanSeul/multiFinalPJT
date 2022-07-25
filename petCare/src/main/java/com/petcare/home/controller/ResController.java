package com.petcare.home.controller;


import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		String userid = (String)session.getAttribute("userid");
		String hospitalkey = (String)session.getAttribute("HospitalId");
		model.addAttribute("userinfo", userservice.UserSelect(userid));
		model.addAttribute("hospitalinfo", hospitalservice.HosSelect(hospitalkey));
		return "calendar";
	}	
	
	@GetMapping("/insertRes")
	public String insertRes(HttpServletRequest request ,ResDto dto, HttpSession session) throws InterruptedException {
		String BookHour = request.getParameter("BookHour");
		String BookDate= request.getParameter("BookDate");
		dto.setBookHour(BookHour);
		dto.setBookDate(BookDate);
		if(resservice.insertRes(dto) > 0) {
			TimeUnit.SECONDS.sleep(2);
			return "redirect:/res/calendar";
		} else {
			return "redirect:/res/calendar";
		}
	
		
	}
	@PostMapping("/resCheck")
	@ResponseBody
	public int resCheck(HttpServletRequest request, @RequestParam("BH") String BH, @RequestParam("BD") String BD, ResDto dto) {
		String BookDate= request.getParameter("BookDate");
		dto.setBookDate(BookDate);
		int cnt = resservice.resCheck(BH, BD);
		return cnt;
	}
}
