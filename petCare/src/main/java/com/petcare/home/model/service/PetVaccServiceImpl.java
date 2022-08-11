package com.petcare.home.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.PetVaccDto;
import com.petcare.home.model.dto.ResDto;
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

	@Override
	public List<PetVaccDto> selectPetVacc(int userkey) {
		return petVaccMapper.selectPetVacc(userkey);
	}

	@Override
	public int vaccInsertRes(ResDto resDto) {
		
		return petVaccMapper.vaccInsertRes(resDto);
	}

	@Override
	public List<ResDto> resVaccBook(int userkey) {
		return petVaccMapper.resVaccBook(userkey);
	}



}
