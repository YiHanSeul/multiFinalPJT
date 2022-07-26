package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.dto.PetInsuDto;

public interface PetService {
	public int insertPet(PetDto petdto);

	public List<PetDto> selectPetAll(int userkey);
	
	public int petInsuPrice(float petInsuAge, String petInsuType);
}
