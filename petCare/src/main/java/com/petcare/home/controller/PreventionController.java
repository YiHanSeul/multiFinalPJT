package com.petcare.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.service.MapService;

@Controller
@RequestMapping("/prevent")
public class PreventionController {

	@Autowired
	   private MapService mapservice;
	
	@GetMapping("/addrfind")
	public String addrfind() {
		System.out.println("addrFind");
		return "index";
	}
}
