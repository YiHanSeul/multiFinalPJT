package com.petcare.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.service.PetService;

@Controller
@RequestMapping("/pet")
public class PetController {

		@Autowired
		PetService petService;
	
	   @GetMapping("/petInfo")
	   public String petIntfo() {
		   
	      return "petInfo";
	   }
	   
		
	   @GetMapping("/petInfoRes") public String petInfoRes(PetDto petDto, String petVac) {
//		    System.out.println(petName);  
//		    System.out.println(petAge);  
//		    System.out.println(petGender);  
//		    System.out.println(petType);  
//		    System.out.println(petNe);  
//		    System.out.println(petVac.split(",")); 
		   System.out.println(petDto);
		   System.out.println(petVac);
		    String[] arr = petVac.split(",");
		    System.out.println(arr);
		    petDto.setPetVac1("X");	
		    petDto.setPetVac2("X");	
		    petDto.setPetVac3("X");	
		    for(String s : arr) {
		    	if(s.equals("A")) {
//		    		System.out.println("A");
		    		//petVac1 = "O";
		    		petDto.setPetVac1("O");
		    		
		    	}
		    	if(s.equals("B")) {
//		    		System.out.println("A");
		    		petDto.setPetVac2("O");
		    	}
		    	if(s.equals("C")) {
//		    		System.out.println("A");
		    		petDto.setPetVac3("O");
		    	}
		    }
//		    PetDto petDto = new PetDto(null, petName, petAge, petGender, petType, petNe, petVac1, petVac2, petVac3);
		    
	    int res = petService.insertPet(petDto);
	    if(res>0) {
	    	return "index1";
	    }else {
	    	return null;
	    }
		    
		 
	   }
		 
	   
	   
}
