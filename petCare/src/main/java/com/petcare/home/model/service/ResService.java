package com.petcare.home.model.service;


import com.petcare.home.model.dto.ResDto;

public interface ResService {
	
	public int insertRes(ResDto dto);

	public int resCheck(String BH, String BD, String HN);
	
	public ResDto resBook(int userkey); 
}
