package com.petcare.home.model.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.config.BcryptPassEncoder;
import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
   
   @Autowired
   UserMapper userMapper;
   
   @Override
   public int joinUser(UserDto user){
      
      return userMapper.joinUser(user);
      
   }
   @Override
   public UserDto UserChk(String userId) {
      return userMapper.userChk(userId);
   }

   @Override
   public int updateUserNick(String userid, String usernick) {
      return userMapper.updateUserNick(userid, usernick);
   }

   @Override
   public int updateUserEmail(String userid, String useremail) {
      return userMapper.updateUserEmail(userid, useremail);
   }
   
   @Override
   public int deleteUser(String userid) {
      return userMapper.deleteUser(userid);
   }

	@Override
	public int updateUserPhone(String userid, String userphone) {
		return userMapper.updateUserPhone(userid, userphone);
	}
	@Override
	public int UserChkId(String userId) {
		return userMapper.userChkId(userId);
	}
	
	
	@Autowired
	private BcryptPassEncoder bcryptPassEncoder;
	
	//비밀번호 찾기 이메일 발송
	@Override
	public void sendEmail(UserDto userPwDto, String div) throws Exception {
		//Mail Server 설정
		String charset="utf-8";
		String hostSMTP="smtp.naver.com";
		String hostSMTPid="juni303"; //네이버 아이디 작성 필수
		String hostSMTPpwd="guswns@11";			//네이버 비밀번호 작성 필수
		
		//보내는 사람 Email, 제목, 내용
		String fromEmail = "juni303@naver.com"; 
		String fromName = "원현준";
		String subject = "";
		String msg = "";
		
		if(div.equals("findpw")) {
			subject = "임시 비밀번호 입니다";
			msg += userPwDto.getUserid()+"님의 임시 비밀번호 입니다.";
			msg += userPwDto.getUserpw();
		}
		
		//받는 사람 E-mail 주소
		String useremail = userPwDto.getUseremail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charset);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465);
			
			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(useremail, charset);
			email.setFrom(fromEmail, fromName, charset);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : "+e);
		}
	}
	@Override
	public void findPw(HttpServletResponse response, UserDto userPwDto) throws Exception {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		System.out.println(userPwDto.getUserid());
		System.out.println(userMapper.userChk(userPwDto.getUserid()));
		UserDto ck = userMapper.userChk(userPwDto.getUserid());
		System.out.println(userPwDto.getUseremail());
		System.out.println(ck.getUseremail());
		if(userMapper.userIdChk(userPwDto.getUserid()) == null) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		//가입된 이메일이 아니면
		else if(!userPwDto.getUseremail().equals(ck.getUseremail())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}
		else {
			//임시 비밀번호 생성
			String pw = "";
			
			
			for(int i=0; i<12; i++) {
				pw += (char)((Math.random()*26)+97);
			}
			String pw1 = bcryptPassEncoder.encode(pw);
			userPwDto.setUserpw(pw);
			//비밀번호 변경
			userMapper.updateUserPw(userPwDto.getUserid(), pw1);
			//비밀번호 변경 메일 발송
			sendEmail(userPwDto, "findpw");
			
			out.print("이메일을 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}

	
	
	@Override
   public UserDto UserSelect(String userid) {
		return userMapper.userSelect(userid);
	}
	@Override
	public UserDto userIdChk(String userId) {
		return userMapper.userIdChk(userId);
	}
	@Override
	public int updateUserPw(String userid, String userpw) {
		return userMapper.updateUserPw(userid, userpw);
	}
	@Override
	public int userKeyChk(String userId) {
		return userMapper.userKeyChk(userId);
	}
	@Override
	public String findmail(String useremail) {
		return userMapper.findmail(useremail) ;
	}

}