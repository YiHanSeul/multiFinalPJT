//package com.petcare.home.finalT;
//
//
//import lombok.RequiredArgsConstructor;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.validation.Valid;
//
//@RequestMapping("/members")
//@Controller
//@RequiredArgsConstructor
//public class MemberController {
//    private final MemberService memberService;
//    private final PasswordEncoder passwordEncoder;
//    
//    @GetMapping(value = "/new")
//    public String memberForm(Model model){
//        model.addAttribute("memberFormDto", new MemberFormDto());
//        return "memberForm";
//    }
//
//    @PostMapping(value = "/new")
//    public String newMember(@Valid MemberFormDto memberFormDto, BindingResult bindingResult, Model model){
//        if(bindingResult.hasErrors()){
//            return "memberForm";
//        }
//        try{
//            Member member = Member.createMember(memberFormDto, passwordEncoder);
//            memberService.saveMember(member);
//        } catch (IllegalStateException e) {
//            model.addAttribute("errorMessage", e.getMessage());
//            return "memberForm";
//        }
//            return "redirect:/";
//        }
//
//    @GetMapping(value = "/login")
//    public String loginMember(){
//        return "/memberLoginForm";
//    }
//
//    @GetMapping(value = "/login/error")
//    public String loginError(Model model){
//        model.addAttribute("loginErrorMsg", "아이디 또는 비밀번호를 확인해주세요");
//        return "/memberLoginForm";
//    }
//
//
//    @GetMapping("/index3")
//    public String index2() {
//    	return "index3";
//    }
//
//
//    }
//
//
//
