package com.petcare.home.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.BoardDto;
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
}
