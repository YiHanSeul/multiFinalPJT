package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.dto.ResDto;
import com.petcare.home.model.dto.UserDto;

@Mapper
public interface ResMapper {
	
	//@Select(" SELECT USERKEY FROM USER WHERE USERKEY = #{userkey}")
	//List<UserDto> userSelect(String userkey);
	
	//@Select(" SELECT USERKEY FROM USER WHERE USERKEY = #{hospitalKey}")
	//List<UserDto> hosSelect(String hospitalkey);
	
	@Select("SELECT COUNT(BOOKHOUR) FROM BOOK WHERE BOOKHOUR = #{BH} AND BOOKDATE = #{BD}")
	int resCheck(String BH, String BD);
	
	@Insert("INSERT INTO BOOK VALUES(0, #{BookHour}, #{BookDate}, #{BookPetType}, #{BookWhy}, #{UserKey}, #{HospitalKey}) ")
	int insert(ResDto dto);
	
	
	
	
}
