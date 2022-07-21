package com.petcare.home.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;


import com.petcare.home.model.dto.PetDto;

@Mapper
public interface PetMapper {

	
	@Insert(" INSERT INTO PET VALUES(null, #{petName},#{petAge},#{petGender},#{petType},#{petNe},#{petVac1},#{petVac2},#{petVac3})  ")
	int insertPet(PetDto petdto);
}
