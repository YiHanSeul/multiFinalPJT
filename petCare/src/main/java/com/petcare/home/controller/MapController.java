package com.petcare.home.controller;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.MapDto;
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
   
   
   @GetMapping("/search")
   public String search(HttpServletRequest request, Model model, HttpSession session) {
	   String HN= request.getParameter("HN");
	   List<MapDto> list = mapservice.search(HN);
	   session.setAttribute("keyword", HN);
	  
	   int size = list.size();
	   model.addAttribute("list",list);
	   model.addAttribute("num", 1);
	   model.addAttribute("begin", 0);
	   model.addAttribute("end", 9);
	   model.addAttribute("lsize", size);
		return "hosSearchRes";
	}
   
   @GetMapping("/search1")
   public String search1(HttpServletRequest request, Model model, HttpSession session) {
	   String HN= request.getParameter("HN");
	   List<MapDto> list = mapservice.search(HN);
	   session.setAttribute("keyword", HN);
	  
	   int size = list.size();
	   model.addAttribute("list",list);
	   model.addAttribute("num", 1);
	   model.addAttribute("begin", 0);
	   model.addAttribute("end", 9);
	   model.addAttribute("lsize", size);
		return "hosSearchRes2";
	}
	
  @GetMapping("/list")
	public String BoardList1(HttpServletRequest request, int num, Model model, HttpSession session){
		System.out.println(num);
		String keyword = (String)session.getAttribute("keyword");
	   String HN= request.getParameter("keyword");
	   List<MapDto> list = mapservice.search(keyword);
	   int size = list.size();
	   model.addAttribute("list",list);
	    model.addAttribute("num", num);
	    model.addAttribute("lsize", size);
		if(list.size()/9==(num-1)) {
		model.addAttribute("begin", (num-1)*9);
		model.addAttribute("end", list.size()-1);
		}else {
			model.addAttribute("begin", (num-1)*9);
			model.addAttribute("end", (num*9)-1);
		}
	   
	   System.out.println(list.size());
		
		return  "hosSearchRes";
	}
   
   @GetMapping("/region")
   public String region(Model model,String region,String zone) { 
      model.addAttribute("list",mapservice.selectreigon(region+" "+zone));
      return "hosMap2";
   } 
   

   @GetMapping("/front")
   public String front() {
      return "front";
   }
}
