package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.PetVaccDto;
import com.petcare.home.model.dto.ResDto;

@Mapper
public interface PetVaccMapper {
	
//	@Select("select * from petvacc where userkey=#{userkey} group by VaccName , PetKey  order by vaccMonth ")
	@Select("SELECT * FROM PETVACC WHERE USERKEY=#{userkey} order by VaccName , VaccMonth ")
	List<PetVaccDto> selectPetVaccAll(int userkey);

	@Insert(" INSERT INTO PETVACC VALUES(null, #{userKey},#{petKey},#{vaccName},#{vaccMonth},#{nextVaccMonth} )  " )
	int vaccadd(PetVaccDto petVaccDto);
	
	
	@Select("select USERKEY , PETKEY , VACCNAME ,max(VACCMONTH) as VACCMONTH, NEXTVACCMONTH from (select * from PETVACC order by VACCMONTH desc) PETVACC group by VACCNAME  , PETKEY having USERKEY = #{userkey} ")
	List<PetVaccDto> selectPetVacc(int userkey);
	
	@Insert(" INSERT INTO VACCBOOK VALUES(0, #{BookHour}, #{BookDate}, #{BookPetType}, #{UserKey}, #{HospitalName}, #{Vacc}, #{VaccName}, 0 ) ")
	int vaccInsertRes(ResDto resDto);
	
	@Select(" select * from VACCBOOK where USERKEY=#{userkey} AND CHK=1 ")
	List<ResDto> resVaccBook(int userkey);

}