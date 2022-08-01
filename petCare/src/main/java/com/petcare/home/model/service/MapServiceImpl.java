package com.petcare.home.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petcare.home.model.dto.MapDto;
import com.petcare.home.model.mapper.MapMapper;

@Service
public class MapServiceImpl implements MapService {

	@Autowired
	MapMapper mapMapper;

	@Override
	public List<MapDto> selectMap() {
		return mapMapper.selectList();
	}

	@Override
	public List<MapDto> selectreigon(String addr) {
		return mapMapper.selectreigon(addr);
	}

	@Override
	public List<MapDto> search(String HN) {
		return mapMapper.search(HN);
	}

}