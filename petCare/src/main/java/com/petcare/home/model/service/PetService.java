package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.PetDto;

public interface PetService {
	public int insertPet(PetDto petdto);

	public List<PetDto> selectPetAll(int userkey);
}
