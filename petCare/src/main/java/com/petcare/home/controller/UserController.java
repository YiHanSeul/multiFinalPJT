package com.petcare.home.controller;

import java.util.List;

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

import com.petcare.home.config.BcryptPassEncoder;
import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.dto.ResDto;
import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.service.AdminService;
import com.petcare.home.model.service.BoardService;
import com.petcare.home.model.service.HospitalService;
import com.petcare.home.model.service.PetService;
import com.petcare.home.model.service.PetVaccService;
import com.petcare.home.model.service.ResService;
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

	@Autowired
	private PetService petService;

	@Autowired
	private ResService resService;

	@Autowired
	private PetVaccService petVaccService;

	@Autowired
	private BoardService boardService;

	@Autowired
	private BcryptPassEncoder bcryptPassEncoder;

	@GetMapping("/user")
	public String test() {
		return "userInsert";
	}

	
	
	
	
	@GetMapping("/index2")
	public String index2() {
		return "front";
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

		if (user.getUserid() == "" || user.getUserpw() == "" || user.getUsername() == "" || user.getUsernick() == ""
				|| user.getUseremail() == "" || user.getUserphone() == "") {
			return "userInsert";
		}
		// 암호화 회원가입
		user.setUserpw(bcryptPassEncoder.encode(user.getUserpw()));
		int res = userService.joinUser(user);

		if (res > 0) {

			session.setAttribute("userid", user.getUserid());

			return "login";
		} else {
			return "index";
		}
	}

	@GetMapping("/cleanNumb")
	@ResponseBody
	public void cleanNum(HttpSession session) {
		session.setAttribute("no", 0);
	}
	
	


	@PostMapping("/loginForm")
	public String loginForm(Model model, String userid, String userpw, HttpSession session, int chk_info) {
		try {
			if (chk_info == 1) {
				int gradeChk = userService.UserChk(userid).getGrade();
				boolean idChk = userid.equals(userService.UserChk(userid).getUserid());
				// 복호화 작업
				boolean pwChk = bcryptPassEncoder.matches(userpw, userService.UserChk(userid).getUserpw());
				if (0 == gradeChk) {
					if (idChk) {
						// 아이디 성공
						if (pwChk) {
							// 비밀번호 성공
							session.setAttribute("userid", userid);
							session.setAttribute("userpw", userpw);
							model.addAttribute("dto", adminService.HospitalVChk());
							
							return "adminCheck";
						} else {
							// 비밀번호 실패
							
							session.setAttribute("no", 3);
							return "redirect:/user/login";
						}
					} else {
						// 아이디 실패
						session.setAttribute("no", 2);
						return "redirect:/user/login";
					}
				}
				// 1은 일반유저
				if (1 == gradeChk) {
					if (idChk) {
						// 아이디 성공
						if (pwChk) {
							// 비밀번호 성공
							session.setAttribute("userid", userid);
							session.setAttribute("userpw", userpw);
							model.addAttribute("dto", adminService.HospitalVChk());
							
							return "index";
						} else {
							// 비밀번호 실패
							session.setAttribute("no", 3);
						
							
							return "redirect:/user/login";
						}
					} else {
						// 아이디 실패
						session.setAttribute("no", 2);
						return "redirect:/user/login";
					}
				}

				return "redirect:/user/login";

				// 어드민도 넣어줘야함 => 마지막이 else가 되서 필요없음

				
				//병원 로그인 서비스
			} else if (chk_info == 2){

				String HospitalId = userid;
				String HospitalPw = userpw;
				// 1은 활성
				int actChk = hosService.HospitalLogChk(HospitalId).getHospitalChk();
				boolean idChk = HospitalId.equals(hosService.HospitalLogChk(HospitalId).getHospitalId());
				boolean pwChk = bcryptPassEncoder.matches(HospitalPw,
						hosService.HospitalLogChk(HospitalId).getHospitalPw());

				if (1 == actChk) {
					// 활성화 성공
					if (idChk) {
						// 아이디 성공
						if (pwChk) {
							// 비밀번호 성공
							session.setAttribute("userid", HospitalId);
							session.setAttribute("userpw", HospitalPw);
							return "redirect:/hos/hosmypage";
						} else {
							// 비밀번호 실패
							session.setAttribute("no", 3);
							return "redirect:/user/login";
						}
					} else {
						// 아이디 실패
						return "redirect:/user/login";
					}
				} else if (0 == actChk) {
					System.out.println("test0");
					// 활성화 실패
					if (idChk) {
						// 아이디 성공
						if (pwChk) {
							// 비밀번호 성공
							
							session.setAttribute("no", 5);
							System.out.println("test");
							return "redirect:/user/login";

						} else {
							// 비밀번호 실패
							return "redirect:/user/login";
						}
					} else {
						// 아이디 실패
						return "redirect:/user/login";
					}
				} else {
					System.out.println("test1");
					return "redirect:/user/login";
				}
			}

		} catch (NullPointerException e) {
			session.setAttribute("no", 4);
			System.out.println("test2");
			return "redirect:/user/login";
		}
		return "redirect:/user/login";
	}

	@GetMapping("/userMypage")
	public String userMypage(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		if ((String) session.getAttribute("userid") == null) {

			return "redirect:/user/login";
		} else {
			int userkey = userService.UserChk(userid).getUserkey();
			List<PetDto> petDto = petService.selectPetAll(userkey);
			model.addAttribute("petDto", petDto);

			UserDto dto = userService.UserChk(userid);
			model.addAttribute("dto", dto);

			List<ResDto> resDto = resService.resBook(userkey);
			model.addAttribute("resDto", resDto);
			// 예방접종 예약 현황 리스트
			List<ResDto> vaccResDto = petVaccService.resVaccBook(userkey);
			model.addAttribute("vaccResDto", vaccResDto);

			List<BoardDto> listBoardDto = boardService.myBoardList(userkey);
			model.addAttribute("listBoardDto", listBoardDto);
			return "userMypage";
		}
	}

	@GetMapping("/userMypageRes")
	public String userMypageRes(HttpServletRequest request, HttpSession session, Model model) {
		
		
		
		String userid = (String) session.getAttribute("userid");
		String usernick = request.getParameter("usernick");
		String useremail = request.getParameter("useremail");
		String userphone = request.getParameter("userphone");
		System.out.println(usernick);
		System.out.println(useremail);
		System.out.println(userphone);
		
		// 닉네임 확인하는 곳
		if (usernick != null) {

			int res = userService.updateUserNick(userid, usernick);
			if (res > 0) {
				UserDto dto = userService.UserChk(userid);
				System.out.println(dto);
				model.addAttribute("dto", dto);

				int userkey = userService.UserChk(userid).getUserkey();
				List<PetDto> petDto = petService.selectPetAll(userkey);
				model.addAttribute("petDto", petDto);
				List<ResDto> resDto = resService.resBook(userkey);
				model.addAttribute("resDto", resDto);

				return "userMypage";
			} else {
				return "index";
			}
		}
		// 이메일 확인하는 곳
		if (useremail != null) {

			int res = userService.updateUserEmail(userid, useremail);
			if (res > 0) {
				UserDto dto = userService.UserChk(userid);

				model.addAttribute("dto", dto);

				int userkey = userService.UserChk(userid).getUserkey();
				List<PetDto> petDto = petService.selectPetAll(userkey);
				model.addAttribute("petDto", petDto);
				List<ResDto> resDto = resService.resBook(userkey);
				model.addAttribute("resDto", resDto);

				return "userMypage";
			} else {
				return "index";
			}
		}

		// 전화번호 확인하는 곳
		if (request.getParameter("userphone") != null) {

			int res = userService.updateUserPhone(userid, userphone);
			if (res > 0) {
				UserDto dto = userService.UserChk(userid);
				model.addAttribute("dto", dto);

				int userkey = userService.UserChk(userid).getUserkey();
				List<PetDto> petDto = petService.selectPetAll(userkey);
				model.addAttribute("petDto", petDto);
				List<ResDto> resDto = resService.resBook(userkey);
				model.addAttribute("resDto", resDto);
				return "userMypage";
			} else {
				return "index";
			}
		}
		// 최종 실패시 나오는 인덱스
		return "index";
	}

	@GetMapping("/userUpdate")
	public String testNext(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		UserDto dto = userService.UserChk(userid);
		model.addAttribute("dto", dto);
		
		
		return "userUpdate";
	}


	@GetMapping("/userDelete")
	public String userDelete(HttpSession session, Model model) {

		return "userDelete";
	}

	@GetMapping("/delete")
	@ResponseBody
	public int delete(HttpSession session, @RequestParam("userpw") String userpw) {
		String userid = (String) session.getAttribute("userid");
		int res = 0;
		boolean pwChk = bcryptPassEncoder.matches(userpw, userService.UserChk(userid).getUserpw());
		if (pwChk) {

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
		int cnt = 0;
		if (userid == null || userid == "") {
			cnt = -1;
			return cnt;
		}
		cnt = userService.UserChkId(userid);
		return cnt;
	}

	@GetMapping("/findpwing")
	public String findpwing() {
		return "userFindpw";
	}

	@GetMapping("/findpw")
	@ResponseBody
	public void findPw(@ModelAttribute UserDto userDto, HttpServletResponse response) throws Exception {
		userService.findPw(response, userDto);
		System.out.println(userDto);
	}

}