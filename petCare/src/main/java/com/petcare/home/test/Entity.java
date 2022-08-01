//package com.petcare.home.test;
//
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//
//public class Entity {
//
//	public static Member createMember(Member member, PasswordEncoder passwordEncoder, String name, String email, String password_, String address, String role) {
//		Member user = new Member();
//		user.setName(name);
//		user.setEmail(email);
//		user.setAddress(address);
//		String password = passwordEncoder.encode(password_);
//		user.setPassword(password);
//		user.setRole(role);
//		return user;
//	}
//}
