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
	
	@Select(" SELECT USERKEY FROM USER WHERE USERID = #{userId}")
	List<UserDto> userSelect(String userId);
	
	@Insert("INSERT INTO BOOK VALUES(#{BookId}, #{BookHour}, #{BookDate}, #{BookPetType}, #{BookWhy},) ")
	int insert(ResDto dto);
	
}
