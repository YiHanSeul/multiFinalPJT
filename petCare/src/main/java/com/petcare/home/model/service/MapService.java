package com.petcare.home.model.service;

import java.util.List;

import com.petcare.home.model.dto.MapDto;

public interface MapService {
 
   public List<MapDto> selectMap();
   public List<MapDto> selectreigon(String addr);
   public List<MapDto> search(String HN);
   
}
