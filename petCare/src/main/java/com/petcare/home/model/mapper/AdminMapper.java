package com.petcare.home.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.AdminDto;

@Mapper
public interface AdminMapper {
	
	@Select(" SELECT * FROM ADMIN WHERE ADMINID = #{AdminId} ")
	AdminDto AdminChk(String AdminId); 
	

}
