package com.petcare.home.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.MapDto;
import com.petcare.home.model.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper boardMapper;
	
	/*
	 * @Override public List<BoardDto> selectList() { List<BoardDto> list =
	 * boardMapper.selectAll();
	 * 
	 * return list; }
	 */

	@Override
	public List<BoardDto> selectList() {
		//List<BoardDto> list = boardMapper.selectAll();
		return boardMapper.selectAll();
	}

	@Override
	public BoardDto selectOne(int boardCnt) {
		return boardMapper.selectOne(boardCnt);
	}

	@Override
	public int write(BoardDto writeDto) {
		return boardMapper.write(writeDto);
	}

	@Override
	public BoardDto selectKey(String id) {
		return boardMapper.selectKey(id);
	}
	
	@Override
	public int selecthosname(String Field1) {
		return boardMapper.selecthosname(Field1);
	}

	@Override
	public int del(int boardCnt) {
		return boardMapper.del(boardCnt);
	}

	@Override
	public List<BoardDto> myBoardList(int userkey) {
		return boardMapper.myBoardList(userkey);
	}

	@Override
	public List<MapDto> selectBoardList(String USERNAME) {
		return boardMapper.selectBoardList(USERNAME);
	}
	
	
}
