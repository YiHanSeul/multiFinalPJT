package com.petcare.home.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.dto.PetVaccDto;
import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.service.PetService;
import com.petcare.home.model.service.PetVaccService;
import com.petcare.home.model.service.UserService;

@Controller
@RequestMapping("/vacc")
public class VaccController {
	@Autowired
	private UserService userService;
	@Autowired
	private PetService petService;
	@Autowired
	private PetVaccService petVaccService;
	
	@GetMapping("/vaccform")
	public String vaccModel (Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {	
		String userid=(String)session.getAttribute("userid");
		int userkey =userService.UserChk(userid).getUserkey();
		List<PetDto> petDto=petService.selectPetAll(userkey);
		model.addAttribute("petDto",petDto);
		
		List<PetVaccDto> petVaccDto=petVaccService.selectPetVaccAll(userkey);
		System.out.println(petVaccDto);
		model.addAttribute("petVaccDto",petVaccDto);
		
		UserDto userDto =userService.UserChk(userid);
		model.addAttribute("userDto",userDto);
		
		return "vacc";
	}
	
	@GetMapping("/vaccadd")
	public String vaccadd() {
		return null;
	}
}
