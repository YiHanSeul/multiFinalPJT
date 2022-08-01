package com.petcare.home.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.api.comma;
import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.service.PetService;
import com.petcare.home.model.service.UserService;

@Controller
@RequestMapping("/pet")
public class PetController {

		@Autowired
		PetService petService;
		
		@Autowired
		UserService userService;
		

	
	   @GetMapping("/petInfo")
	   public String petIntfo() {
		   
	      return "petInfo";
	   }
	   
		
	   @GetMapping("/petInfoRes") 
	   public String petInfoRes(HttpSession session, Model model, PetDto petDto) {
		   
		   if(petDto.getPetName()==null || petDto.getPetName()=="" ||
				  petDto.getPetAge() < 0 || petDto.getPetGender() == null ||
				  petDto.getPetGender()== "" || petDto.getPetType() == null ||
				  petDto.getPetType() == "" || petDto.getPetNe() == null ||
				  petDto.getPetNe() =="") {
		   }
		   
		   String userid = (String)session.getAttribute("userid");
		   petDto.setUserKey(userService.userKeyChk(userid));
		   
	    int res = petService.insertPet(petDto);
	    if(res>0) {
	    	model.addAttribute("petDto", petDto);
	    	System.out.println("성공");
	    	return "redirect:/user/userMypage";
	    }else {
	    	System.out.println("실패");
	    	return "index1";
	    }
	   }
		 
	   @GetMapping("/petInsuInfo")
	   public String petInsuInfo() {
		   return "petInsuInfo";
	   }
	   
	   @GetMapping("/petInsuInfoRes")
	   public String petInsuInfoRes(Model model, float petAgeI, String petTypeI, String petTypeI2, String petName) {


		   if(petTypeI2 == null) {
			   int petPriceI = petService.petPriceI(petAgeI, petTypeI);
			    comma cm = new comma();
			    String petPriceI2 = cm.Test(petPriceI);
			   
			   
			   model.addAttribute("petPriceI2", petPriceI2);
			   String petNameI = petService.petNameI(petAgeI, petTypeI);
			   model.addAttribute("petNameI", petNameI);
			   
//			   System.out.println(petName);
			   model.addAttribute("petName", petName);
		   }else{
			   if(!petTypeI.equals("초소형견")) {
				   petTypeI += "D";
			   }
			   
			   int petPriceI = petService.petPriceI(petAgeI, petTypeI);
			   comma cm = new comma();
			    String petPriceI2 = cm.Test(petPriceI);
			   model.addAttribute("petPriceI2", petPriceI2);
			   String petNameI = petService.petNameI(petAgeI, petTypeI);
			   model.addAttribute("petNameI", petNameI);
			   model.addAttribute("petName", petName);
		   }
		   
		   return "petRePage";
	   }
	   
	   
	   
	   
}
