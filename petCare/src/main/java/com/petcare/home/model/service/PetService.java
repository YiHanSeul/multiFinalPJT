package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.PetDto;

public interface PetService {
	public int insertPet(PetDto petdto);

	public List<PetDto> selectPetAll(int userkey);
	
	public int petPriceI(float petAgeI, String petTypeI);
	
	public String petNameI(float petAgeI, String petTypeI);

	public int del(int petKey);
}
