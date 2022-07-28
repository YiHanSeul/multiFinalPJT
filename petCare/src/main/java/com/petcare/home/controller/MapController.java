package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
   
   @PostMapping("/search")
   @ResponseBody
   public int search(HttpServletRequest request, @RequestParam("hn") String HosName) {
	   System.out.println(HosName);
	  int cnt = mapservice.search(HosName);
      return cnt;
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
