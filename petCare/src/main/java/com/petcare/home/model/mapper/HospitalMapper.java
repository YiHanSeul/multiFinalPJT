package com.petcare.home.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.petcare.home.model.dto.HospitalDto;

@Mapper
public interface HospitalMapper {

	@Insert(" INSERT INTO hospital_user VALUES(#{HospitalKey},#{HospitalName},#{HosPitalId},#{HospitalPw},#{HospitalEmail},#{HospitalPhone},#{HospitalAddr},2)  ")
	int joinHospital(HospitalDto hospitalDto);

}
