package com.petcare.home.model.service;

import java.util.List;

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

	@Override
	public List<PetDto> selectPetAll(int userkey) {
		return petMapper.selectPetAll(userkey);
	}

	@Override
	public int petPriceI(float petAgeI, String petTypeI) {
		return petMapper.petPriceI(petAgeI, petTypeI);
	}

	@Override
	public String petNameI(float petAgeI, String petTypeI) {
		return petMapper.petNameI(petAgeI, petTypeI);
	}

	@Override
	public int del(int petKey) {
		return petMapper.delpet(petKey);
	}


	



}
