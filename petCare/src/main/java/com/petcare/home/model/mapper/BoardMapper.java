package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.BoardDto;

@Mapper
public interface BoardMapper {

	@Select(" select * from Community ")
	List<BoardDto> selectAll();
	
}
