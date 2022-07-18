package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.service.HospitalService;


@Controller
@RequestMapping("/hos")
public class HospitalController {
	
	@Autowired
	private HospitalService hosService;
	@GetMapping("/insertHosForm")
	public String insertHosForm() {
		return "insertHos";
	}
	
	@GetMapping("/insertHos")
	public String insertHos(HospitalDto hospitalDto) {
		System.out.println(hospitalDto);
		
		int res=hosService.insertHos(hospitalDto);
		if(res>0) {
			return "index";
		}else {
			return "insertHos";
		}
	}
	@GetMapping("/hosMap")
	public String hosMap() {
		return "hosMap";
	}
	
	@GetMapping("/loginHos")
	public String loginHos() {
		return "loginHos";
	}
	
	@PostMapping("/loginHosForm")
	   public String loginForm(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	      String HospitalId = request.getParameter("HospitalId");
	      String HospitalPw = request.getParameter("HospitalPw");
	      session.setAttribute("HospitalId", HospitalId);
	      session.setAttribute("HospitalPw", HospitalPw);
	      
	      if(1 == hosService.HospitalLogChk(HospitalId).getHospitalChk() 
	    		  && HospitalId.equals(hosService.HospitalLogChk(HospitalId).getHosPitalId() ) 
	    		  && HospitalPw.equals(hosService.HospitalLogChk(HospitalId).getHospitalPw()) ){
	    	  
	    	  return "loginHosMypage";
	      }
	      
	      
	      
	      if(0 == hosService.HospitalLogChk(HospitalId).getHospitalChk() 
	    		  && HospitalId.equals(hosService.HospitalLogChk(HospitalId).getHosPitalId() ) 
	    		  && HospitalPw.equals(hosService.HospitalLogChk(HospitalId).getHospitalPw()) ){
	    	  
	    	  model.addAttribute("text","비활성");
	    	  return "loginHos";
	      }
	      
	      
	      return "loginHos";

	}
}
