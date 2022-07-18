package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.service.UserService;

import ch.qos.logback.core.recovery.ResilientSyslogOutputStream;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	// 회원가입 폼으로 넘어감

	@GetMapping("/user")
	public String test() {
		return "user";
	}

//	@GetMapping("/user")
//	public String user() {
//		return "login";
//	}

	@GetMapping("/join")
	public String join() {

		return "join";// jsp 파일리턴
	}

	@GetMapping("/calendar")
	public String calendarPage() {
		return "calendar";
	}

	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}

	@GetMapping("/insertUserForm")
	public String insertUserForm(UserDto user) {

		return "user";
	}

	// user.jsp파일에서 form 전송 클릭했을경우 실행되는 메소드
	@GetMapping("/insertUser")
	public String insertUser(UserDto user, HttpSession session, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(user);
		int res = userService.joinUser(user);
		if (res > 0) {
			System.out.println(user);
			session.setAttribute("userid", user.getUserid());
			
			return "index";
		} else {
			return "index2";
		}

		
		 
		 

	}

	@PostMapping("/loginForm")
	public String loginForm(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");

		session.setAttribute("userid", userid);
		session.setAttribute("userpw", userpw);

		if (0 == userService.UserChk(userid).getGrade() && userid.equals(userService.UserChk(userid).getUserid())
				&& userpw.equals(userService.UserChk(userid).getUserpw())) {
			model.addAttribute("userid", userid);

			return "adminCheck";
		} else if (1 == userService.UserChk(userid).getGrade() && userid.equals(userService.UserChk(userid).getUserid())
				&& userpw.equals(userService.UserChk(userid).getUserpw())) {
			model.addAttribute("userid", userid);
			return "index";
		}
		return "login";
	}

	@GetMapping("/userMypage")
	public String userMypage(Model model, HttpServletRequest request, HttpServletResponse response, String userid, HttpSession session) {
		String petName = request.getParameter("petName");
		String petAge = request.getParameter("petAge");
		String petGender = request.getParameter("petGender");
		String petN = request.getParameter("petN");
		model.addAttribute("petName", petName);
		model.addAttribute("petAge", petAge);
		model.addAttribute("petGender", petGender);
		model.addAttribute("petN", petN);
		// 가입한거를 가지고 와야하나?

		userid = (String) session.getAttribute("userid");
		System.out.println(userid);
		UserDto dto = userService.UserChk(userid);
		String username = dto.getUsername();
		String usernick = dto.getUsernick();
		String useremail = dto.getUseremail();
		String userphone = dto.getUserphone();
		
		model.addAttribute("userid", userid);
		model.addAttribute("username", username);
		model.addAttribute("usernick", usernick);
		model.addAttribute("useremail", useremail);
		model.addAttribute("userphone", userphone);
		return "userMypage";
	}

	@GetMapping("/petInfo")
	public String petIntfo() {

		return "petInfo";
	}

	@GetMapping("/userMypageRes")
	//값을 여기서 받고 처리해줌
	public String userMypageRes(HttpServletRequest request, HttpServletResponse response, HttpSession session, String userid, String usernick, Model model) {

		userid = (String) session.getAttribute("userid");
		int res = userService.updateUserNick(userid, usernick);
		if(res>0) {
			UserDto dto = userService.UserChk(userid);
			String username = dto.getUsername();
			
			String useremail = dto.getUseremail();
			String userphone = dto.getUserphone();
			
			model.addAttribute("userid", userid);
			model.addAttribute("username", username);
			model.addAttribute("usernick", usernick);
			model.addAttribute("useremail", useremail);
			model.addAttribute("userphone", userphone);
			
			return "userMypage";
		}else {
			return "index2";
		}
//		return "userMypage";
	}
	
	@GetMapping("/userMypageRes2")
	//값을 여기서 받고 처리해줌
	public String userMypageRes2(HttpServletRequest request, HttpServletResponse response, HttpSession session, String userid, String useremail, Model model) {
		
		userid = (String) session.getAttribute("userid");
		int res = userService.updateUserNick(userid, useremail);
		if(res>0) {
			UserDto dto = userService.UserChk(userid);
			String username = dto.getUsername();
			
			String usernick = dto.getUsernick();
			String userphone = dto.getUserphone();
			
			model.addAttribute("userid", userid);
			model.addAttribute("username", username);
			model.addAttribute("useremail", useremail);
			model.addAttribute("usernick", usernick);
			model.addAttribute("userphone", userphone);
			
			System.out.println(usernick);
			
			System.out.println(useremail);
			return "userMypage";
		}else {
			return "index2";
		}
//		return "userMypage";
	}
	
	
	
	@GetMapping("/testNext")
	public String testNext(HttpSession session, String userid, Model model) {
		userid = (String) session.getAttribute("userid");
		UserDto dto = userService.UserChk(userid);
		String usernick = dto.getUsernick();
		model.addAttribute("usernick", usernick);
		return "testNext";
	}
	
	
	@GetMapping("/testNext2")
	public String testNext2(HttpSession session, String userid, Model model) {
		userid = (String) session.getAttribute("userid");
		UserDto dto = userService.UserChk(userid);
		String useremail = dto.getUseremail();
		model.addAttribute("useremail", useremail);
		System.out.println(useremail);
		return "testNext2";
	}
}
