package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.petcare.home.model.dto.AdminDto;
import com.petcare.home.model.dto.HospitalDto;

@Mapper
public interface AdminMapper {
	
	@Select(" SELECT * FROM ADMIN WHERE ADMINID = #{AdminId} ")
	AdminDto AdminChk(String AdminId); 
	
	@Select(" SELECT * FROM HOSPITAL_USER WHERE HOSPITALCHK = 0 ")
	List<HospitalDto> HospitalVChk(); //verify
	
	@Update(" UPDATE HOSPITAL_USER SET HospitalChk= 1 where HospitalKey=#{HospitalKey}")
	int updateHospitalVChk(String HospitalKey);
}
