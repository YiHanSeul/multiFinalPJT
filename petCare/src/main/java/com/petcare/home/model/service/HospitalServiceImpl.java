package com.petcare.home.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.mapper.HospitalMapper;

@Service
public class HospitalServiceImpl implements HospitalService {
	@Autowired
	private HospitalMapper hospitalMapper;

	@Override
	public int insertHos(HospitalDto hospitalDto) {
		return hospitalMapper.insertHos(hospitalDto);
	}

	@Override
	public HospitalDto HospitalLogChk(String HospitalId) {
		return hospitalMapper.HospitalLogChk(HospitalId);
	}

	@Override
	public HospitalDto HosSelect(String hospitalkey) {
		return hospitalMapper.HosSelect(hospitalkey);
	}

	/*
	 * @Override public void imgTest(MultipartFile file) throws Exception {
	 * 
	 * }
	 */

}