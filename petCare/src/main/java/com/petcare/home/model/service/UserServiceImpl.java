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
   public int joinUser(UserDto user){
      
      return userMapper.joinUser(user);
      
   }
   @Override
   public UserDto UserChk(String userId) {
//      System.out.println("service임플임");
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
   public UserDto UserSelect(String userId) {
      return null;
   }
   @Override
   public int deleteUser(String userid) {
      return userMapper.deleteUser(userid);
   }

<<<<<<< HEAD
	@Override
	public int updateUserPhone(String userid, String userphone) {
		return userMapper.updateUserPhone(userid, userphone);
	}
	@Override
	public int UserChkId(String userId) {
		return userMapper.userChkId(userId);
	}
=======
   @Override
   public int updateUserPhone(String userid, String userphone) {
      return userMapper.updateUserPhone(userid, userphone);
   }
>>>>>>> master

}