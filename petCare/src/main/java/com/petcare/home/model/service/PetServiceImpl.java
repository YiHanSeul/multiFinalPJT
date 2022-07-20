package com.petcare.home.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.mapper.PetMapper;

@Service
public class PetServiceImpl implements PetService{

	@Autowired
	PetMapper petMapper;
	
	@Override
	public int insertPet(PetDto petdto) {
		return petMapper.insertPet(petdto);
	}

}
