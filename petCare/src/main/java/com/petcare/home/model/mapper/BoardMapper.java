package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.BoardDto;

@Mapper
public interface BoardMapper {

	@Select(" select * from Community ")
	List<BoardDto> selectAll();
	
	@Select("select * from Community where BoardCnt=#{boardCnt}")
	BoardDto selectOne(int boardCnt);
	
	@Insert(" insert into community values(null, now(), #{comContent} ,  #{comTitle}, '한방병원', #{userKey}) ")
	int write(BoardDto writeDto);
	
}
