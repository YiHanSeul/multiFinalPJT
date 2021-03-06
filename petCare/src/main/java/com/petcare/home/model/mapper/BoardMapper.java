package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.MapDto;

@Mapper
public interface BoardMapper {

	@Select(" select * from Community ")
	List<BoardDto> selectAll();
	
	@Select("select * from Community where BoardCnt=#{boardCnt}")
	BoardDto selectOne(int boardCnt);
	
	@Insert(" insert into community values(null, now(), #{comContent} ,  #{comTitle}, #{field1}, #{userKey} ,#{rating}) ")
	int write(BoardDto writeDto);
	
	@Select(" select * from User where UserId = #{id} ")
	BoardDto selectKey(String id);
	
	@Select(" select count(*) from MAP where HOSPITALNAME = #{Field1} ")
	int selecthosname(String Field1);
	
	@Delete(" delete from community where boardCnt= #{boardCnt} ")
	int del(int boardCnt);
}
