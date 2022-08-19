package com.petcare.home.test;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.petcare.home.model.dto.UserDto;
 
@Controller
public class MailController {
 
    private final EmailService emailService;
 
    public MailController(EmailService emailService) {
        this.emailService = emailService;
    }
 
    @GetMapping("/mail/send")
    public String main() {
        return "SendMail";
    }
 
    @PostMapping("/mail/send")
    public String sendMail(MailDto mailDto) {
        emailService.sendSimpleMessage(mailDto);
        System.out.println("메일 전송 완료");
        return "login";
    }
}