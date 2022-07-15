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

import com.petcare.home.model.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	//회원가입 폼으로 넘어감
	@GetMapping("/join")
	public String join() {
		return "join";//jsp 파일리턴 
	}
	
	   @GetMapping("/login")
	   public String loginPage() {
	      return "login";
	   }
	   	@GetMapping("/insertUserForm")
	public String insertUserForm() {
		return "user";
	}
	   //user.jsp파일에서 form 전송 클릭했을경우 실행되는 메소드
	@GetMapping("/insertUser")
	public String insertUser() {
		
		
		return "user";
	}
	
	   @PostMapping("/loginForm")
	   public String loginForm(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	      String UserId = request.getParameter("UserId");
	      String UserPw = request.getParameter("UserPw");
	     
	      
	      
	      session.setAttribute("UserId", UserId);
	      session.setAttribute("UserPw", UserPw);
	      
	      if(0== userService.UserChk(UserId).getGrade()&&UserId.equals(userService.UserChk(UserId).getUserid())&& UserPw.equals(userService.UserChk(UserId).getUserpw())) {
	         model.addAttribute("UserId",UserId);
	         
	         return "adminCheck";
	      }else if (1== userService.UserChk(UserId).getGrade()&&UserId.equals(userService.UserChk(UserId).getUserid())&& UserPw.equals(userService.UserChk(UserId).getUserpw())) {
	    	  model.addAttribute("UserId",UserId);
	    	  return "index";
	      }
	      return "login";
	   }
	        
	

}
