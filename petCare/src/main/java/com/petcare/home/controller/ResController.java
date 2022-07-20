package com.petcare.home.controller;


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
		String hospitalid = (String)session.getAttribute("HospitalId");
		model.addAttribute("userinfo", userservice.UserSelect(userid));
		model.addAttribute("hospitalinfo", hospitalservice.HosSelect(hospitalid)); //병원의 아이디와 이름을 받아오기
		return "calendar";
	}	
	
	@GetMapping("/insertRes")
	public String insertRes(HttpServletRequest request ,ResDto dto, HttpSession session) {
		//String userid = (String)session.getAttribute("userid");
		//String num =(String)session.getAttribute("i");
		//int i = Integer.parseInt(num);
		String BookHour = request.getParameter("BookHour");
		String BookDate= request.getParameter("BookDate");
		System.out.println(BookDate);
		//System.out.println(i);
		//System.out.println(BookHour[i]);
		//System.out.println(BookHour[i]);
		dto.setBookHour(BookHour);
		dto.setBookDate(BookDate);
		//dto.setBookDate((String)session.getAttribute("selectedDate"));
		if(resservice.insertRes(dto) > 0) {
			
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
		System.out.println(BH + BD);
		int cnt = resservice.resCheck(BH, BD);
		System.out.println(cnt);
		return cnt;
	}
}
