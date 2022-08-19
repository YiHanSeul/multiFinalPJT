package com.petcare.home.test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.petcare.home.config.BcryptPassEncoder;
import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.mapper.UserMapper;
import com.petcare.home.model.service.UserService;

import lombok.AllArgsConstructor;

@Service

public class EmailService {
	@Autowired
	private BcryptPassEncoder bcryptPassEncoder;
	@Autowired
    private JavaMailSender emailSender;
	@Autowired
    private UserService userService;
	@Autowired
    private UserMapper userMapper;
   
	
    public void sendSimpleMessage(MailDto mailDto) {
    	
    	 String pw = "";
    		
    		
    		for(int i=0; i<12; i++) {
    			pw += (char)((Math.random()*26)+97);
    		}
    		String useremail = mailDto.getAddress();
    		String userid=userService.findmail(useremail);
    		String pw1 = bcryptPassEncoder.encode(pw);
    		
//    		//비밀번호 변경
    		userMapper.updateUserPw(userid, pw1);
    	
    	
    	
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("hjwon0117@gmail.com");
        message.setTo(mailDto.getAddress());
//        message.setTo(userService.UserChk(userid).getUseremail());
        message.setSubject(mailDto.getTitle());
        message.setText(pw);
        emailSender.send(message);
    }
}