package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.AdminDto;
import com.petcare.home.model.dto.HospitalDto;

public interface AdminService {
	public AdminDto AdminChk(String AdminId);
	public List<HospitalDto> HospitalVChk(); 
	public int updateHospitalVChk(String HospitalKey);
	


}
