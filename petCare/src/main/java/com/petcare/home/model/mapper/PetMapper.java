package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.PetDto;
import com.petcare.home.model.dto.PetInsuDto;

@Mapper
public interface PetMapper {

	
	@Insert(" INSERT INTO PET VALUES(null, #{UserKey}, #{petName},#{petAge},#{petGender},#{petType},#{petNe},#{petVac1},#{petVac2},#{petVac3})  ")
	int insertPet(PetDto petdto);
	
	@Select(" SELECT * FROM PET where USERKEY=#{userkey} ")
	List<PetDto> selectPetAll(int UserKey);
	
	@Select(" SELECT PetInsuPrice FROM PetInsu WHERE PetInsuAge=#{petInsuAge} and PetInsuType=#{petInsuType} ")
	int petInsuPrice(float petInsuAge, String petInsuType);
}
