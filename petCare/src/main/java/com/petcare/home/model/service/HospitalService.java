package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.HospitalDto;

public interface HospitalService {
	public int insertHos(HospitalDto hospitalDto);
	public HospitalDto HospitalLogChk(String HosPitalId);
	public HospitalDto HosSelect(String hospitalkey);
}
