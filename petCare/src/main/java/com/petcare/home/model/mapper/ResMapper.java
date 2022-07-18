package com.petcare.home.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.UserDto;

@Mapper
public interface ResMapper {

	@Insert(" INSERT INTO user BOOK(#{UserKey},#{UserId},#{UserPw},#{UserName},#{UserNick},#{UserEmail},#{UserPhone},1)  ")
	int joinUser(UserDto userDto);
	
	@Select(" SELECT * FROM USER WHERE USERID = #{userId} ")
	UserDto userChk(String userId);
	
}
