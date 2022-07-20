package com.petcare.home.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.AdminDto;
import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.mapper.AdminMapper;


@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminMapper adminMapper;
	
	
	@Override
	public AdminDto AdminChk(String AdminId) {
		return adminMapper.AdminChk(AdminId);
	}


	@Override
	public List<HospitalDto> HospitalVChk() {
		// TODO Auto-generated method stub
		return adminMapper.HospitalVChk();
	}


	@Override
	public int updateHospitalVChk(String HospitalKey) {
		return adminMapper.updateHospitalVChk(HospitalKey);
	}














	
	
	
}
