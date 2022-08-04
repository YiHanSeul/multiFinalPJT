package com.petcare.home.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
		
		//백신 기록 상세보기 과거에 맞은거 싹다 조회함
		List<PetVaccDto> petVaccListDto=petVaccService.selectPetVaccAll(userkey);
		model.addAttribute("petVaccListDto",petVaccListDto);
		//최근 접종 백신기록 조회
		List<PetVaccDto> petvaccDto=petVaccService.selectPetVacc(userkey);
		model.addAttribute("petVaccDto",petvaccDto);
		
		
		return "vacc";
	}
	
	@GetMapping("/vaccadd")
	public String vaccadd(Model model, HttpSession session, PetVaccDto petVaccDto) throws ParseException {
		String userid=(String)session.getAttribute("userid");
		System.out.println(petVaccDto.getVaccName());
		int userkey =userService.UserChk(userid).getUserkey();
		//date 포맷 설정
		SimpleDateFormat sdfYMD= new SimpleDateFormat("yyyy-MM-dd");
		//string-> date 변환
		Date date=sdfYMD.parse(petVaccDto.getVaccMonth());
		//날짜 연산을 위한 calenda객체 생성
		Calendar cal=Calendar.getInstance();
		cal.setTime(date);
		// 6달뒤
		cal.add(Calendar.MONTH,6);
		petVaccDto.setUserKey(userkey);
		petVaccDto.setNextVaccMonth(sdfYMD.format(cal.getTime()));
		System.out.println(petVaccDto);
		
		int res=petVaccService.vaccadd(petVaccDto);
		
		if(res>0) {
			return "redirect:/vacc/vaccform";
		}else {
			return null;
			
		}
	}
}
