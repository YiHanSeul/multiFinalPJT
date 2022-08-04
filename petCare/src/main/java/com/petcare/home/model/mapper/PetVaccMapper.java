package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.PetVaccDto;

@Mapper
public interface PetVaccMapper {
	
//	@Select("select * from petvacc where userkey=#{userkey} group by VaccName , PetKey  order by vaccMonth ")
	@Select("SELECT * FROM PETVACC WHERE USERKEY=#{userkey} order by VaccName , VaccMonth ")
	List<PetVaccDto> selectPetVaccAll(int userkey);

	@Insert("INSERT INTO PETVACC VALUES(null, #{userKey},#{petKey},#{vaccName},#{vaccMonth},#{nextVaccMonth}) " )
	int vaccadd(PetVaccDto petVaccDto);
	
	
	@Select("select userkey,petkey, vaccName,max(vaccMonth)as vaccMonth, nextVaccMonth from (select * from petvacc order by vaccMonth desc) petvacc group by Vaccname ,petkey having userkey=#{userkey} ")
	List<PetVaccDto> selectPetVacc(int userkey);

}