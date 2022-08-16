package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.MapDto;

public interface BoardService {

	public List<BoardDto> selectList();
	
	public BoardDto selectOne(int boardCnt);
	
	public int write(BoardDto writeDto);
	
	public BoardDto selectKey(String id);
	
	public int selecthosname(String ComTitle);
	
	public int del(int boardCnt);

	public List<BoardDto> myBoardList(int userkey);
	
	public List<MapDto> selectBoardList(String USERNAME);
}
