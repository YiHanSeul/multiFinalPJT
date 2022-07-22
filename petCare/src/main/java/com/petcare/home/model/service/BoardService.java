package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.BoardDto;

public interface BoardService {

	public List<BoardDto> selectList();
	
	public BoardDto selectOne(int boardCnt);
	
	public int write(BoardDto writeDto);
	
	
}
