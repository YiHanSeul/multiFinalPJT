package com.petcare.home.model.service;

import com.petcare.home.model.dto.UserDto;

public interface UserService {

	public int joinUser(UserDto user);

	public UserDto UserChk(String userId);
	
	public int  updateUserNick(String userid, String usernick);
	
	public int updateUserEmail(String userid, String useremail);
	public UserDto UserSelect(String userId);
}
