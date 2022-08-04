package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.PetVaccDto;

public interface PetVaccService {
	public List<PetVaccDto> selectPetVaccAll(int userkey);

	public int vaccadd(PetVaccDto petVaccDto);

	public List<PetVaccDto> selectPetVacc(int userkey);
}
