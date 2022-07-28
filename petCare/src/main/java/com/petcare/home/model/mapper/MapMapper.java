package com.petcare.home.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.petcare.home.model.dto.MapDto;

@Mapper
public interface MapMapper {
 
   
   @Select(" SELECT * FROM MAP ")
   List<MapDto> selectList();
   
   @Select(" SELECT * FROM MAP WHERE ADDR LIKE CONCAT(#{addr}, '%') ")
   List<MapDto> selectreigon(String addr);
   
   @Select(" SELECT COUNT(HOSPITALNAME) FROM MAP WHERE HOSPITALNAME LIKE '%#{name}%' ")
   int search(String name);
} 
