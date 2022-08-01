//package com.petcare.home.test;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping("/test")
//public class TestController {
//	
//	@Autowired
//	MemberService memberService;
//	
//	@GetMapping("/test")
//	public String test() {
//		return "index1";
//	}
//	
//	@GetMapping("/index2")
//	public String index2(PasswordEncoder passwordEncoder, String name, String email, String password_, String address, String role) {
//		System.out.println(name);
//		System.out.println(email);
//		System.out.println(password_);
//		System.out.println(address);
//		System.out.println(role);
//		Member member = new Member();
//		member.setName(name);
//		member.setEmail(email);
//		String password = passwordEncoder.encode(password_);
//		member.setPassword(password);
//		member.setAddress(address);
//		member.setRole(role);
//		int res = memberService.insertMember(member);
//		if(res>0) {
//			return "index3";
//		}
//		
//		
//		return "index4";
//	}
//	
//}
