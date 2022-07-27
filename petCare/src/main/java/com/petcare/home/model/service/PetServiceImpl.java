package com.petcare.home.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.dto.PetInsuDto;
import com.petcare.home.model.mapper.PetMapper;

@Service
public class PetServiceImpl implements PetService{

	@Autowired
	PetMapper petMapper;
	
	
	@Override
	public int insertPet(PetDto petdto) {
		return petMapper.insertPet(petdto);
	}

	@Override
	public List<PetDto> selectPetAll(int userkey) {
		return petMapper.selectPetAll(userkey);
	}

	@Override
	public int petInsuPrice(float petInsuAge, String petInsuType) {
		// TODO Auto-generated method stub
		return petMapper.petInsuPrice(petInsuAge, petInsuType);
	}

	



}
