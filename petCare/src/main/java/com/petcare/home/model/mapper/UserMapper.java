package com.petcare.home.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.petcare.home.model.dto.UserDto;

@Mapper
public interface UserMapper {

	@Insert(" INSERT INTO user VALUES(NULL,#{userid},#{userpw},#{username},#{usernick},#{useremail},#{userphone},1)  ")
	int joinUser(UserDto userDto);
	
	@Select(" SELECT * FROM USER WHERE USERID = #{userId} ")
	UserDto userChk(String userId);
	
	@Update(" UPDATE USER SET USERNICK= #{usernick} where USERID=#{userid}")
	int updateUserNick(String userid, String usernick);
	
	@Update(" UPDATE USER SET USEREMAIL= #{useremail} where USERID=#{userid}")
	int updateUserEmail(String userid, String useremail);
	
}
