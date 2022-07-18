package com.petcare.home.controller;

import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;

import com.petcare.home.api.ocr;
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

	@PostMapping("/insertHos")
	public String insertHos(HospitalDto hospitalDto) {

		System.out.println(hospitalDto);

		int res = hosService.insertHos(hospitalDto);
		if (res > 0) {
			return "index";
		} else {
			return "insertHos";
		}

	}
	@Autowired
	ResourceLoader resourceLoader;
	@GetMapping("/ocr")
	public String ocrTest(Model model) throws IOException {
		System.out.println(resourceLoader.getResource("classpath:static").getURI());
		System.out.println(Path.of(resourceLoader.getResource("classpath:static").getURI()));
		String path = Path.of(resourceLoader.getResource("classpath:static").getURI()).toString();
		System.out.println(path);
		String res = new ocr().ocrTest(path);
		
		model.addAttribute("res", res);
		return "ocrRes";
	}

	@GetMapping("/imgTest")
	public String imgTest(@RequestParam MultipartFile imgFile, HttpServletRequest request) {
		System.out.println("넘오오나?");
		System.out.println(imgFile);
		return null;
	}
	@PostMapping("/imgTest")
	public String imgTest(MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		System.out.println("여기는 테스트 진행중 메서드 파일임");
		return null;
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
