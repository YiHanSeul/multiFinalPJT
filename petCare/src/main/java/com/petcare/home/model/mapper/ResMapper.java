package com.petcare.home.model.mapper;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.ResDto;

@Mapper
public interface ResMapper {
	
	
	@Select("SELECT COUNT(BOOKHOUR) FROM BOOK WHERE BOOKHOUR = #{BH} AND BOOKDATE = #{BD} AND HOSPITALNAME = #{HN}")
	int resCheck(String BH, String BD, String HN);
	
	@Insert("INSERT INTO BOOK VALUES(0, #{BookHour}, #{BookDate}, #{BookPetType}, #{BookWhy}, #{UserKey}, #{HospitalName}) ")
	int insert(ResDto dto);
	
	@Select(" SELECT * FROM BOOK WHERE USERKEY=#{userkey} ")
	ResDto resBook(int userkey); 
	
	
}
