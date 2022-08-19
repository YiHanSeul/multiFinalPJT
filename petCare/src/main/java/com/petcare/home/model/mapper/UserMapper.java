package com.petcare.home.model.mapper;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.petcare.home.model.dto.UserDto;

@Mapper
public interface UserMapper {

	@Insert(" INSERT INTO USER VALUES(NULL,#{userid},#{userpw},#{username},#{usernick},#{useremail},#{userphone},1)  ")
	int joinUser(UserDto userDto);
	
	@Select(" SELECT * FROM USER WHERE USERID = #{userId} ")
	UserDto userChk(String userId);
	
	@Select(" SELECT USERID FROM USER WHERE USERID = #{userId} ")
	UserDto userIdChk(String userId);
	
	@Select(" SELECT USERKEY FROM USER WHERE USERID = #{userId} ")
	int userKeyChk(String userId);
	
	@Select(" SELECT COUNT(USERID) FROM USER WHERE USERID = #{userId} ")
	int userChkId(String userId);
	
	@Select(" SELECT USERKEY FROM USER WHERE USERID = #{userid}")
    UserDto userSelect(String userid);
	
	@Update(" UPDATE USER SET USERNICK= #{usernick} where USERID=#{userid}")
	int updateUserNick(String userid, String usernick);
	
	@Update(" UPDATE USER SET USEREMAIL= #{useremail} where USERID=#{userid}")
	int updateUserEmail(String userid, String useremail);
	
	@Update(" UPDATE USER SET USERPHONE = #{userphone} where USERID=#{userid} ")
	int updateUserPhone(String userid, String userphone);

	@Update(" UPDATE USER SET USERPW = #{userpw} where USERID=#{userid} ")
	int updateUserPw(String userid, String userpw);
	
	@Delete(" DELETE FROM USER WHERE USERID=#{userid} ")
	int deleteUser(String userid);
	
	@Select(" SELECT USERID FROM USER WHERE USEREMAIL =#{useremail} ")
	String findmail(String useremail);
	
	
	
}
