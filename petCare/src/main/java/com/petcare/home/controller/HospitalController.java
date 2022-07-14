package com.petcare.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	@GetMapping("/hosJoinForm")
	public String hosJoinForm() {
		return "hosjoin";
	}
	
	@GetMapping("/hosJoin")
	public String hosJoin(HospitalDto hospitalDto) {
		System.out.println(hospitalDto);
		
		int res=hosService.joinHospital(hospitalDto);
		if(res>0) {
			return "index";
		}else {
			return "hosjoin";
		}
	}
	@GetMapping("/hosMap")
	public String hosMap() {
		return "hosMap";
	}
}
