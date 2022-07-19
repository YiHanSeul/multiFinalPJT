package com.petcare.home.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.dto.ResDto;
import com.petcare.home.model.mapper.ResMapper;


@Service
public class ResServiceImpl implements ResService{

	@Autowired
	ResMapper resMapper;
	
	@Override
	public int insertRes(ResDto dto) {
		return resMapper.insert(dto);
	}



	
	
}
