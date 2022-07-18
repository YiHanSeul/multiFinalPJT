package com.petcare.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.service.MapService; 


@Controller
@RequestMapping("/map")
public class MapController {
	
	@Autowired
	private MapService mapservice;
	
	@GetMapping("/hosMap")
	public String hosMap(Model model) {
		 model.addAttribute("list",mapservice.selectMap());
		return "hosMap";
	}
	@GetMapping("/region")
	public String region(Model model,String region,String zone) { 
		model.addAttribute("list",mapservice.selectreigon(region+" "+zone));
		return "hosMap";
	} 
	@GetMapping("/front")
	public String front() {
		return "front";
	}
}
