package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
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
	
	@Select(" SELECT PETPRICEI FROM PETINSU WHERE PETAGEI = #{petAgeI} and PETTYPEI = #{petTypeI} ")
	int petPriceI(float petAgeI, String petTypeI);
	
	@Select(" SELECT PETNAMEI FROM PETINSU WHERE PETAGEI = #{petAgeI} and PETTYPEI = #{petTypeI} ")
	String petNameI(float petAgeI, String petTypeI);

	@Delete(" DELETE FROM PET WHERE PETKEY= #{petKey} ")
	int delpet(int petKey);
	
}
