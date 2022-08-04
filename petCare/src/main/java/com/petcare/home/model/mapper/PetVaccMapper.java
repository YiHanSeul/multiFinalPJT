package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.PetVaccDto;

@Mapper
public interface PetVaccMapper {
	
	@Select("select * from petvacc where userkey=#{userkey} group by VaccName , PetKey  order by vaccMonth ")
	List<PetVaccDto> selectPetVaccAll(int userkey);

	@Insert("INSERT INTO PETVACC VALUES(null, #{userKey},#{petKey},#{vaccName},#{vaccMonth},#{nextVaccMonth}) " )
	int vaccadd(PetVaccDto petVaccDto);

}
