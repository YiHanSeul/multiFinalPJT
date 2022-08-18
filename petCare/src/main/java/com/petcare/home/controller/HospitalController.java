package com.petcare.home.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

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
import com.petcare.home.config.BcryptPassEncoder;
import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.dto.ResDto;
import com.petcare.home.model.service.HospitalService;

@Controller
@RequestMapping("/hos")
public class HospitalController {

   @Autowired
   private HospitalService hosService;

   @GetMapping("/insertHosForm")
   public String insertHosForm() {
      return "hosInsert";
   }
   @Autowired
   ResourceLoader resourceLoader;
   
   @Autowired
   private BcryptPassEncoder bcryptPassEncoder;

   @PostMapping("/insertHos")
      public String insertHos(HospitalDto hospitalDto, MultipartFile file) throws Exception {
         System.out.println(hospitalDto);
         System.out.println(file.getOriginalFilename());
         // 경로지정
         //String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\file";
         String projectPath = System.getProperty("user.dir");
         // 임의로 식별자 생성
         UUID uuid = UUID.randomUUID();

         String fileName = uuid + "_" + file.getOriginalFilename();
         File saveFile = new File(projectPath, fileName);

         file.transferTo(saveFile);
         String res = new ocr().ocrTest(projectPath + "/" + fileName);
         System.out.println(res);
         JSONParser jsonParse = new JSONParser();
         JSONObject jObj = (JSONObject) jsonParse.parse(res);
         JSONArray images = (JSONArray) jObj.get("images");
         JSONObject uid = (JSONObject) images.get(0);
         JSONArray fields = (JSONArray) uid.get("fields");
         JSONObject inferText = (JSONObject) fields.get(1);
         String HospitalKey = (String) inferText.get("inferText");
         System.out.println(HospitalKey);
         HospitalKey = HospitalKey.substring(0, 3) + HospitalKey.substring(4, 6) + HospitalKey.substring(7, 12);
         System.out.println(HospitalKey);
         hospitalDto.setHospitalKey(HospitalKey);
         //병원 암호화
         hospitalDto.setHospitalPw(bcryptPassEncoder.encode(hospitalDto.getHospitalPw()));
         
         int res1 = hosService.insertHos(hospitalDto);
         if (res1 > 0) {
            return "login";
         } else {
            return "hosInsert";
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
      //병원 로그인시 보이는 페이지
      @GetMapping("/hosmypage")
      public String hosmypage(HttpSession session,Model model) {
    	  String userid=(String)session.getAttribute("userid");
    	  List<ResDto> resdto=hosService.bookSelect(userid);
    	  System.out.println(resdto);
    	  model.addAttribute("resDto", resdto);
    	  List<ResDto> vaccresdto=hosService.vaccBookSelect(userid);
    	  System.out.println(vaccresdto);
    	  model.addAttribute("vaccResDto", vaccresdto);
    	  
    	  List<ResDto> agreeresdto=hosService.agreebook(userid);
    	  model.addAttribute("agreeresDto",agreeresdto);
    	  System.out.println(agreeresdto);
    	  List<ResDto> agreevaccresdto=hosService.agreevaccbook(userid);
    	  model.addAttribute("agreevaccresDto",agreevaccresdto);
    	  System.out.println(agreevaccresdto);
    	  return "hosMyPage";
      }
      
      @GetMapping("/bookagree")
      public String bookagree(int bookId) {
    	  System.out.println(bookId);
    	  System.out.println("여기옴?");
    	  int res=hosService.bookagree(bookId);
    	  if(res>0) {
    		  return "redirect:/hos/hosmypage";
    	  }else {
    		  return "redirect:/hos/hosmypage";
    	  }
      }
      
      @GetMapping("/vaccbookagree")
      public String vaccbookagree(int vaccbookId) {
    	  System.out.println("백북아이디"+vaccbookId);
    	  int res=hosService.vaccbookagree(vaccbookId);
    	  if(res>0) {
    		  return "redirect:/hos/hosmypage";
    	  }else {
    		  return "redirect:/hos/hosmypage";
    	  }
      }
   }
      