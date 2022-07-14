package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.AdminDto;
import com.petcare.home.model.dto.HospitalDto;

@Mapper
public interface AdminMapper {
	
	@Select(" SELECT * FROM ADMIN WHERE ADMINID = #{AdminId} ")
	AdminDto AdminChk(String AdminId); 
	
	@Select(" SELECT * FROM HOSPITAL_USER WHERE HOSPITALCHK = 0 ")
	List<HospitalDto> HospitalVChk(); 
}
