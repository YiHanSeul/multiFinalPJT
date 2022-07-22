package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.service.AdminService;
import com.petcare.home.model.service.HospitalService;
import com.petcare.home.model.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private HospitalService hosService;
	@Autowired
	private AdminService adminService;
	// 회원가입 폼으로 넘어감

	@GetMapping("/user")
	public String test() {
		return "user";
	}

	@GetMapping("/index")
	public String index() {
		return "index";
	}

	@GetMapping("/join") // 개인회원&병원회원 로그인 가능하게힘
	public String join() {

		return "join";// jsp 파일리턴
	}

	@GetMapping("/login") // 유저&어드민 로그인 페이지
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
			return "index1";
		}

	}

	@PostMapping("/loginForm")
	public String loginForm(Model model, HttpServletRequest request, HttpServletResponse response,HttpSession session , int chk_info) {
		System.out.println(chk_info);
		if(chk_info==1) {
			String userid = request.getParameter("userid");
			String userpw = request.getParameter("userpw");

			session.setAttribute("userid", userid);
			session.setAttribute("userpw", userpw);
			if (0 == userService.UserChk(userid).getGrade() && userid.equals(userService.UserChk(userid).getUserid())
					&& userpw.equals(userService.UserChk(userid).getUserpw())) {
				model.addAttribute("userid", userid);
				System.out.println(adminService.HospitalVChk());

				model.addAttribute("dto", adminService.HospitalVChk());

				return "adminCheck";
			} else if (1 == userService.UserChk(userid).getGrade() && userid.equals(userService.UserChk(userid).getUserid())
					&& userpw.equals(userService.UserChk(userid).getUserpw())) {
				model.addAttribute("userid", userid);
				return "index";
			}

		}else {
			String HospitalId = request.getParameter("userid");
			String HospitalPw = request.getParameter("userpw");
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
		}
				return "login";
	}

	@GetMapping("/userMypage")
	public String userMypage(Model model, HttpServletRequest request, HttpServletResponse response, String userid,
			HttpSession session) {
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
		UserDto dto = userService.UserChk(userid);
		model.addAttribute("dto", dto);

		return "userMypage";
	}

	@GetMapping("/userMypageRes")
	// 값을 여기서 받고 처리해줌
	public String userMypageRes(HttpSession session, String usernick, Model model) {
		String userid = (String) session.getAttribute("userid");

		int res = userService.updateUserNick(userid, usernick);
		if (res > 0) {
			UserDto dto = userService.UserChk(userid);
			dto.setUsernick(usernick);
			model.addAttribute("dto", dto);
			return "userMypage";
		} else {
			return "index2";
		}
	}

	@GetMapping("/userMypageRes2")
	// 값을 여기서 받고 처리해줌
	public String userMypageRes2(HttpSession session, String useremail, Model model) {
		String userid = (String) session.getAttribute("userid");

		int res = userService.updateUserEmail(userid, useremail);
		if (res > 0) {
			UserDto dto = userService.UserChk(userid);
			dto.setUsernick(useremail);
			model.addAttribute("dto", dto);

			return "userMypage";
		} else {
			return "index2";
		}
	}

	@GetMapping("/userMypageRes3")
	public String userMypageRes3(HttpSession session, String userphone, Model model) {
		String userid = (String) session.getAttribute("userid");
		int res = userService.updateUserPhone(userid, userphone);
		if (res > 0) {
			UserDto dto = userService.UserChk(userid);
			dto.setUsernick(userphone);
			model.addAttribute("dto", dto);

			return "userMypage";
		} else {
			return "index2";
		}
	}

	@GetMapping("/userChnick")
	public String testNext(HttpSession session, String userid, Model model) {
		userid = (String) session.getAttribute("userid");
		UserDto dto = userService.UserChk(userid);
		String usernick = dto.getUsernick();
		model.addAttribute("usernick", usernick);
		return "userChnick";
	}

	@GetMapping("/userChemail")
	public String testNext2(HttpSession session, String userid, Model model) {
		userid = (String) session.getAttribute("userid");
		UserDto dto = userService.UserChk(userid);
		String useremail = dto.getUseremail();
		model.addAttribute("useremail", useremail);
		return "userChemail";
	}

	@GetMapping("/userChphone")
	public String testNext3(HttpSession session, String userid, Model model) {
		userid = (String) session.getAttribute("userid");
		UserDto dto = userService.UserChk(userid);
		String userphone = dto.getUserphone();
		model.addAttribute("userphone", userphone);

		return "userChphone";
	}

	@GetMapping("/userDelete")
	public String userDelete(HttpSession session, Model model) {
		String userid = (String) session.getAttribute("userid");
		model.addAttribute("msg", "로그인 실패");

		return "userDelete";
	}

	@GetMapping("/delete")
	@ResponseBody
	public int delete(HttpSession session, @RequestParam("userpw") String userpw) {
		String userid = (String) session.getAttribute("userid");
//      System.out.println(userid);
//		System.out.println(userpw);
//		System.out.println(userService.UserChk(userid).getUserpw());
		int res = 0;
		if (userpw.equals(userService.UserChk(userid).getUserpw())) {

			res = userService.deleteUser(userid);
			if (res > 0) {
				session.removeAttribute(userid);
				session.invalidate();
				return res;
			}
		}
		return res;
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		session.removeAttribute(userid);
		session.invalidate();
		return "index";
	}

	@GetMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("userid") String userid) {
		int cnt = userService.UserChkId(userid);
		return cnt;
	}

	@GetMapping("/findpwing")
	public String findpwing() {
		return "findpw";
	}

	@GetMapping("/findpw")
	public void findPwPOST(@ModelAttribute UserDto userDto, HttpServletResponse response) throws Exception {
		userService.findPw(response, userDto);
	}

}