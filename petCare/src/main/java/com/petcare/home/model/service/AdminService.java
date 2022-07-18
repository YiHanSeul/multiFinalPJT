package com.petcare.home.model.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.petcare.home.model.dto.AdminDto;
import com.petcare.home.model.dto.HospitalDto;

public interface AdminService {
	public AdminDto AdminChk(String AdminId);
	public List<HospitalDto> HospitalVChk(); 
	public int updateHospitalVChk(String HospitalKey);
	


}
