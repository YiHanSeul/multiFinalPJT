package com.petcare.home.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.dto.PetVaccDto;
import com.petcare.home.model.dto.ResDto;
import com.petcare.home.model.service.HospitalService;
import com.petcare.home.model.service.MapService;
import com.petcare.home.model.service.PetService;
import com.petcare.home.model.service.PetVaccService;
import com.petcare.home.model.service.ResService;
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
	@Autowired
	private MapService mapService;
	@Autowired
	private HospitalService hospitalService;
	@Autowired
	private ResService resService;

	/*
	 * @GetMapping("/vaccform") public String vaccModel (Model model,
	 * HttpServletRequest request, HttpServletResponse response, HttpSession
	 * session) { if((String)session.getAttribute("userid") == null) {
	 * session.setAttribute("numvac", 5); return "redirect:/user/login"; }else {
	 * String userid=(String)session.getAttribute("userid");
	 * 
	 * int userkey =userService.UserChk(userid).getUserkey(); List<PetDto>
	 * petDto=petService.selectPetAll(userkey); model.addAttribute("petDto",petDto);
	 * 
	 * //백신 기록 상세보기 과거에 맞은거 싹다 조회함 List<PetVaccDto>
	 * petVaccListDto=petVaccService.selectPetVaccAll(userkey);
	 * model.addAttribute("petVaccListDto",petVaccListDto); //최근 접종 백신기록 조회
	 * List<PetVaccDto> petvaccDto=petVaccService.selectPetVacc(userkey);
	 * model.addAttribute("petVaccDto",petvaccDto);
	 * 
	 * 
	 * return "vacc"; } }
	 */
	
	@GetMapping("/vaccform")
	public String vaccModel(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		
		try {
			String userid = (String) session.getAttribute("userid");

			int userkey = userService.UserChk(userid).getUserkey();
			List<PetDto> petDto = petService.selectPetAll(userkey);
			model.addAttribute("petDto", petDto);

			// 백신 기록 상세보기 과거에 맞은거 싹다 조회함
			List<PetVaccDto> petVaccListDto = petVaccService.selectPetVaccAll(userkey);
			model.addAttribute("petVaccListDto", petVaccListDto);
			// 최근 접종 백신기록 조회
			List<PetVaccDto> petvaccDto = petVaccService.selectPetVacc(userkey);
			model.addAttribute("petVaccDto", petvaccDto);

		} catch (Exception e) {
			session.setAttribute("no", 1);

			return "redirect:/user/login";
		}
		return "vacc";
	}

	@GetMapping("/vaccadd")
	public String vaccadd(Model model, HttpSession session, PetVaccDto petVaccDto) {
		
		try {
			String userid = (String) session.getAttribute("userid");
			System.out.println(petVaccDto.getVaccName());
			int userkey = userService.UserChk(userid).getUserkey();
			// date 포맷 설정
			SimpleDateFormat sdfYMD = new SimpleDateFormat("yyyy-MM-dd");
			// string-> date 변환
			Date date = sdfYMD.parse(petVaccDto.getVaccMonth());
			// 날짜 연산을 위한 calenda객체 생성
			Calendar cal = Calendar.getInstance();
			if (petVaccDto.getVaccName().equals("종합7종") || petVaccDto.getVaccName().equals("코로나")) {
				// 1년뒤
				System.out.println("종합7종 or 코로나 접종 1년 증가");
				cal.add(Calendar.MONTH, 12);
			} else {
				// 6달뒤
				System.out.println("켄넬코프");
				cal.add(Calendar.MONTH, 6);
			}
			cal.add(Calendar.MONTH, 6);
			petVaccDto.setUserKey(userkey);
			petVaccDto.setNextVaccMonth(sdfYMD.format(cal.getTime()));
			System.out.println(petVaccDto);
		} catch (ParseException e) {
			System.out.println("test");
			session.setAttribute("no", 6);
			// no == 6 날짜를 선택하지 않은 경우
			return "redirect:/vacc/vaccform";
		}
		int res = petVaccService.vaccadd(petVaccDto);

		if (res > 0) {
			return "redirect:/vacc/vaccform";
		} else {
			return "index";

		}

	}

	@GetMapping("/vacchos")
	public String vacchos(Model model) {
		model.addAttribute("list", mapService.selectMap());
		return "vacchos";
	}

	@GetMapping("/region2")
	public String region2(Model model, String region, String zone) {
		model.addAttribute("list", mapService.selectreigon(region + " " + zone));
		return "hosMap3";
	}

	@GetMapping("/vacccalendar")
	public String vacccalendar(HttpServletRequest request, HttpSession session, Model model, ResDto resDto) {
		String HospitalName = request.getParameter("HospitalName");
		System.out.println(resDto);
		session.setAttribute("HospitalName", HospitalName);
		String userid = (String) session.getAttribute("userid");
		String hospitalkey = (String) session.getAttribute("HospitalName");
		model.addAttribute("userinfo", userService.UserSelect(userid));
		model.addAttribute("hospitalinfo", hospitalService.HosSelect(hospitalkey));
		model.addAttribute("vacc1", resDto.getVacc1());
		model.addAttribute("vacc2", resDto.getVacc2());
		model.addAttribute("vacc3", resDto.getVacc3());
		model.addAttribute("hospitalkey", hospitalkey);
		return "vacccalendar";
	}
	
	@GetMapping("/vacccalendar1")
	public String vacccalendar1(HttpServletRequest request, HttpSession session, Model model, ResDto resDto) {
		String HospitalName = request.getParameter("HospitalName");
		System.out.println(resDto);
		session.setAttribute("HospitalName", HospitalName);
		String userid = (String) session.getAttribute("userid");
		String hospitalkey = (String) session.getAttribute("HospitalName");
		model.addAttribute("userinfo", userService.UserSelect(userid));
		model.addAttribute("hospitalinfo", hospitalService.HosSelect(hospitalkey));
		model.addAttribute("vacc1", resDto.getVacc1());
		model.addAttribute("vacc2", resDto.getVacc2());
		model.addAttribute("vacc3", resDto.getVacc3());
		model.addAttribute("hospitalkey", hospitalkey);
		return "vacccalendar1";
	}

	@PostMapping("/resVacCheck")
	@ResponseBody
	public int resCheck(HttpServletRequest request, @RequestParam("BH") String BH, @RequestParam("BD") String BD,
			@RequestParam("HN") String HN, ResDto dto) {
		String BookDate = request.getParameter("BookDate");
		dto.setBookDate(BookDate);
		int cnt = resService.resVacCheck(BH, BD, HN);
		return cnt;
	}

	@GetMapping("/vaccInsertRes")
	public String vaccInsertRes(HttpServletRequest request, ResDto resDto, HttpSession session)
			throws InterruptedException {

		String BookHour = request.getParameter("BookHour");
		String BookDate = request.getParameter("BookDate");

		resDto.setBookHour(BookHour);
		resDto.setBookDate(BookDate);
		String lastChar = resDto.getVacc().substring(resDto.getVacc().length() - 1);
		resDto.setVacc(resDto.getVacc().strip().substring(0, resDto.getVacc().length() - 1));

		switch (lastChar) {
		case "1":
			resDto.setVaccName("종합8종");
			break;
		case "2":
			resDto.setVaccName("캔넬코프");
			break;
		case "3":
			resDto.setVaccName("코로나");
		}

		int res = petVaccService.vaccInsertRes(resDto);

		if (res > 0) {
			TimeUnit.SECONDS.sleep(2);
			return "redirect:/user/userMypage#myBook";
		} else {
			return "redirect:/vacc/vacccalendar";
		}
	}
}
