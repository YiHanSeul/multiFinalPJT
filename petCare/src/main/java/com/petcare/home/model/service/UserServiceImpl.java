package com.petcare.home.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public void joinUser(UserDto user) throws Exception{
		
		userMapper.joinUser(user);
		
	}

	@Override
	public UserDto UserChk(String userId) {
		System.out.println("service임플임");
		return userMapper.userChk(userId);
	}

}
