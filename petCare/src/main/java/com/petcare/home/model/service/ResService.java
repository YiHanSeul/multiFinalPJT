package com.petcare.home.model.service;


import java.util.List;

import com.petcare.home.model.dto.ResDto;

public interface ResService {
	
	public int insertRes(ResDto dto);

	public int resCheck(String BH, String BD, String HN);
	
	public List<ResDto> resBook(int userkey); 

	public int resVacCheck(String BH, String BD, String HN);
 
	public int del(int bookId);

	public int delhos(int bookId);
   
}
