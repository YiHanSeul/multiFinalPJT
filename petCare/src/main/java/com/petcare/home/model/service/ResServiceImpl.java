package com.petcare.home.model.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	@Override
	public int resCheck(String BH, String BD, String HN) {
		return resMapper.resCheck(BH,BD,HN);
	}

	@Override
	public ResDto resBook(int userkey) {
		return resMapper.resBook(userkey);
	}

	@Override
	public int resVacCheck(String BH, String BD, String HN) {
		return resMapper.resVacCheck(BH,BD,HN);
	}




	
	
}
