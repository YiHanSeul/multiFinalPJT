package com.petcare.home.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.PetVaccDto;
import com.petcare.home.model.mapper.PetVaccMapper;

@Service
public class PetVaccServiceImpl  implements PetVaccService{
	@Autowired
	PetVaccMapper petVaccMapper;

	@Override
	public List<PetVaccDto> selectPetVaccAll(int userkey) {
		return petVaccMapper.selectPetVaccAll(userkey);
	}

	@Override
	public int vaccadd(PetVaccDto petVaccDto) {
		return petVaccMapper.vaccadd(petVaccDto);
	}



}
