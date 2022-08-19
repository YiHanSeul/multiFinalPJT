package com.petcare.home.model.service;

import javax.servlet.http.HttpServletResponse;

import com.petcare.home.model.dto.UserDto;

public interface UserService {

   public int joinUser(UserDto user);

	public UserDto UserChk(String userId);
	
	public UserDto userIdChk(String userId);
	
	public int userKeyChk(String userId);
	
	public int UserChkId(String userId);
	
	public int  updateUserNick(String userid, String usernick);
	
	public int updateUserEmail(String userid, String useremail);
	
	public int updateUserPhone(String userid, String userphone);
	
	public int updateUserPw(String userid, String userpw);
	
	public int deleteUser(String userid);
	
	public UserDto UserSelect(String userkey);
	
	//이메일발송
	public void sendEmail(UserDto userDto, String div) throws Exception;
	
	//비밀번호찾기
	public void findPw(HttpServletResponse response, UserDto userDto) throws Exception;
	//이메일 찾기
	public String findmail(String useremail);
}
