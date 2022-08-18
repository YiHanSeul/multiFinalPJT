package com.petcare.home.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.dto.ResDto;
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

	@Override
	public List<ResDto> bookSelect(String userid) {
		return hospitalMapper.bookSelect(userid);
	}

	@Override
	public List<ResDto> vaccBookSelect(String userid) {
		return hospitalMapper.vaccBookSelect(userid);
	}

	@Override
	public int bookagree(int bookId) {
		return hospitalMapper.bookagree(bookId);
	}

	@Override
	public int vaccbookagree(int vaccbookId) {
		return hospitalMapper.vaccbookagree(vaccbookId);
	}

	@Override
	public List<ResDto> agreebook(String userid) {
		return hospitalMapper.agreebook(userid);
	}

	@Override
	public List<ResDto> agreevaccbook(String userid) {
		return hospitalMapper.agreevaccbook(userid);
	}




}