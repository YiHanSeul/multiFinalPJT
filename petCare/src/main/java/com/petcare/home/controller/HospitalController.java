package com.petcare.home.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.parser.JSONParser;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
	@Autowired
	ResourceLoader resourceLoader;

	@PostMapping("/insertHos")
	public String insertHos(HospitalDto hospitalDto, MultipartFile file) throws Exception {
		System.out.println(hospitalDto);
		System.out.println(file.getOriginalFilename());
		// 경로지정
		String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\file";
		// 임의로 식별자 생성
		UUID uuid = UUID.randomUUID();

		String fileName = uuid + "_" + file.getOriginalFilename();
		File saveFile = new File(projectPath, fileName);

		file.transferTo(saveFile);
		String res = new ocr().ocrTest(projectPath + "\\" + fileName);

		JSONParser jsonParse = new JSONParser();
		JSONObject jObj = (JSONObject) jsonParse.parse(res);
		JSONArray images = (JSONArray) jObj.get("images");
		JSONObject uid = (JSONObject) images.get(0);
		JSONArray fields = (JSONArray) uid.get("fields");
		JSONObject inferText = (JSONObject) fields.get(1);
		String HospitalKey = (String) inferText.get("inferText");
		HospitalKey = HospitalKey.substring(0, 3) + HospitalKey.substring(4, 6) + HospitalKey.substring(7, 12);
		hospitalDto.setHospitalKey(HospitalKey);

		int res1 = hosService.insertHos(hospitalDto);
		if (res1 > 0) {
			return "index";
		} else {
			return "insertHos";
		}
	}

	@GetMapping("/hosMap")
	public String hosMap() {
		return "hosMap";
	}

	@GetMapping("/ocr")
	public String ocrForm() {
		return "ocrRes";
	}

}