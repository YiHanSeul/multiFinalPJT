package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.PetDto;

@Mapper
public interface PetMapper {

	
	@Insert(" INSERT INTO PET VALUES(null, #{UserKey}, #{petName},#{petAge},#{petGender},#{petType},#{petNe} )  ")
	int insertPet(PetDto petdto);
	
	@Select(" SELECT * FROM PET where USERKEY=#{userkey} ")
	List<PetDto> selectPetAll(int UserKey);
	
	@Select(" SELECT PetPriceI FROM PetInsu WHERE PetAgeI=#{petAgeI} and PetTypeI=#{petTypeI} ")
	int petPriceI(float petAgeI, String petTypeI);
	
	@Select(" SELECT PetNameI FROM PetInsu WHERE PetAgeI=#{petAgeI} and PetTypeI=#{petTypeI} ")
	String petNameI(float petAgeI, String petTypeI);
	
	
}
