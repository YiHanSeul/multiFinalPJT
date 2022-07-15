package com.petcare.home.controller;

import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;

import com.petcare.home.api.ocr;
import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.service.HospitalService;

@Controller
@RequestMapping("/hos")
public class HospitalController {

	@Autowired
	private HospitalService hosService;
	private MultipartResolver mutipartResoverll;
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
	@GetMapping("/hosMap")
	public String hosMap() {
		return "hosMap";
	}
}
