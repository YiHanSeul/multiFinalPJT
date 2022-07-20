package com.petcare.home.controller;

import java.io.File;
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

	@GetMapping("/insertHos")
	public String insertHos(HospitalDto hospitalDto) {
		System.out.println(hospitalDto);

		// hospitalDto.setHospitalKey(값을 뽑은다음에);
		int res = hosService.insertHos(hospitalDto);
		if (res > 0) {
			return "index";
		} else {
			return "insertHos";
		}
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
	public String loginForm(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		String HospitalId = request.getParameter("HospitalId");
		String HospitalPw = request.getParameter("HospitalPw");
		session.setAttribute("HospitalId", HospitalId);
		session.setAttribute("HospitalPw", HospitalPw);

		if (1 == hosService.HospitalLogChk(HospitalId).getHospitalChk()
				&& HospitalId.equals(hosService.HospitalLogChk(HospitalId).getHospitalId())
				&& HospitalPw.equals(hosService.HospitalLogChk(HospitalId).getHospitalPw())) {

			return "loginHosMypage";
		}

		if (0 == hosService.HospitalLogChk(HospitalId).getHospitalChk()
				&& HospitalId.equals(hosService.HospitalLogChk(HospitalId).getHospitalId())
				&& HospitalPw.equals(hosService.HospitalLogChk(HospitalId).getHospitalPw())) {

			model.addAttribute("text", "비활성");
			return "loginHos";
		}

		return "loginHos";

	}
	@GetMapping("/ocr")
	public String ocrForm() {
		return "ocrRes";
	}

	@Autowired
	ResourceLoader resourceLoader;

	@PostMapping("/imgTest")
	public String imgTest(MultipartFile file, Model model) throws Exception {
		// 경로지정
		String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\img";
		// 임의로 식별자 생성
		UUID uuid = UUID.randomUUID();

		String fileName = uuid + "_" + file.getOriginalFilename();
		File saveFile = new File(projectPath, fileName);

		file.transferTo(saveFile);
		String res = new ocr().ocrTest(projectPath + "\\" + fileName);
		
		model.addAttribute("res", res);
	
		System.out.println(res);
		System.out.println("res타입임"+res.getClass().getName());
		JSONParser jsonParse=new JSONParser();
		JSONObject jObj = (JSONObject)jsonParse.parse(res);
		System.out.println(jObj.get("images"));
		JSONArray images=(JSONArray)jObj.get("images");
		System.out.println("images 변수"+images);
		JSONObject  uid=(JSONObject)images.get(0);
		System.out.println(uid);
		JSONArray fields=(JSONArray)uid.get("fields");
		System.out.println(fields.get(1));
		JSONObject inferText=(JSONObject)fields.get(1);
		System.out.println(inferText.get("inferText"));
		return "ocrRes";
	}
}