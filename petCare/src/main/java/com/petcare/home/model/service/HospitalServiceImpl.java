package com.petcare.home.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public HospitalDto HospitalSelect(String HospitalKey) {
	return hospitalMapper.HosSelect(HospitalKey);
	}



}