package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.dto.ResDto;

public interface HospitalService {
	public int insertHos(HospitalDto hospitalDto);
	public HospitalDto HospitalLogChk(String HosPitalId);
	public HospitalDto HosSelect(String hospitalkey);
	//병원로그인시 병원예약조회
	public List<ResDto> bookSelect(String userid);
	//병원로그인시 예방접종 예약조회
	public List<ResDto> vaccBookSelect(String userid);
	
	//승인
	public int bookagree(int bookId);
	public int vaccbookagree(int vaccbookId);
	
	//예약완료된거 
	public List<ResDto> agreebook(String userid);
	public List<ResDto> agreevaccbook(String userid);
}
