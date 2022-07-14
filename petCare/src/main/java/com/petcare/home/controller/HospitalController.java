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
	@PostMapping("/hosMap")
	public String hosMap() {
		return "hosMap";
	}
}
