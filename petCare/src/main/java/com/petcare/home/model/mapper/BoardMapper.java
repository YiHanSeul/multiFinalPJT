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

	@Select(" select * from COMMUNITY COMMUNITY ")
	List<BoardDto> selectAll();
	
	@Select("select * from COMMUNITY where BOARDCNT = #{boardCnt}")
	BoardDto selectOne(int boardCnt);
	
	@Insert(" insert into COMMUNITY values(null, now(), #{comContent} ,  #{comTitle}, #{field1}, #{userKey} ,#{rating}) ")
	int write(BoardDto writeDto);
	
	@Select(" select * from USER where USERID = #{id} ")
	BoardDto selectKey(String id);
	
	@Select(" select count(*) from MAP where HOSPITALNAME = #{Field1} ")
	int selecthosname(String Field1);
	
	@Delete(" delete from COMMUNITY where BOARDCNT = #{boardCnt} ")
	int del(int boardCnt);
	
	
	@Select(" select * from COMMUNITY where USERKEY = #{userkey} ")
	List<BoardDto> myBoardList(int userkey);

	
	@Select(" select * from MAP where HOSPITALNAME LIKE '${USERNAME}%' LIMIT 10")
	List<MapDto> selectBoardList(String USERNAME);
	
	
}
