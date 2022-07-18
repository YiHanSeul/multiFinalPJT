package com.petcare.home.model.mapper;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.HospitalDto;

@Mapper
public interface HospitalMapper {

	@Insert(" INSERT INTO hospital_user VALUES(#{HospitalKey},#{HospitalName},#{HospitalId},#{HospitalPw},#{HospitalEmail},#{HospitalPhone},#{HospitalAddr},0,2)  ")
	int insertHos(HospitalDto hospitalDto);

	
	@Select(" SELECT * FROM HOSPITAL_USER WHERE HOSPITALID = #{HospitalId} ")
	HospitalDto HospitalLogChk(String hospitalId);

	@Select("SELECT HOSPITALKEY, HOSPITALNAME FROM HOSPITAL_USER WHERE HOSPITALID = #{HosPitalId}")
	HospitalDto HosSelect(String hospitalKey);
	
}
