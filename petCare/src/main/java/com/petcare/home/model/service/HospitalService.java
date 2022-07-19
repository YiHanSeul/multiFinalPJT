package com.petcare.home.model.service;

import com.petcare.home.model.dto.HospitalDto;

public interface HospitalService {
	public int insertHos(HospitalDto hospitalDto);
	public HospitalDto HospitalLogChk(String HosPitalId);
	public HospitalDto HospitalSelect(String HosPitalKey);
	//public void imgTest(MultipartFile file) throws Exception;
}
