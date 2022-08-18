package com.petcare.home.model.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.ResDto;

@Mapper
public interface ResMapper {
	
	
	@Select("SELECT COUNT(BOOKHOUR) FROM BOOK WHERE BOOKHOUR = #{BH} AND BOOKDATE = #{BD} AND HOSPITALNAME = #{HN}")
	int resCheck(String BH, String BD, String HN);
	
	@Select("SELECT COUNT(BOOKHOUR) FROM VACCBOOK WHERE BOOKHOUR = #{BH} AND BOOKDATE = #{BD} AND HOSPITALNAME = #{HN}")
	int resVacCheck(String BH, String BD, String HN);
	
	@Insert("INSERT INTO BOOK VALUES(0, #{BookHour}, #{BookDate}, #{BookPetType}, #{BookWhy}, #{UserKey}, #{HospitalName}, 0) ")
	int insert(ResDto dto);
	
	@Select(" SELECT * FROM BOOK WHERE USERKEY=#{userkey} AND CHK=1 ")
	List<ResDto> resBook(int userkey);

	@Delete(" DELETE FROM VACCBOOK WHERE BOOKID= #{bookId} ")
	int del(int bookId);

	@Delete(" DELETE FROM BOOK WHERE BOOKID= #{bookId} ")
	int delhos(int bookId);
}
