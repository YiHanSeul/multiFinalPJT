package com.petcare.home.model.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.petcare.home.model.dto.HospitalDto;
import com.petcare.home.model.dto.ResDto;

@Mapper
public interface HospitalMapper {

	@Insert(" INSERT INTO HOSPITAL_USER VALUES(#{HospitalKey},#{HospitalName},#{HospitalId},#{HospitalPw},#{HospitalEmail},#{HospitalPhone},#{HospitalAddr},0,2)  ")
	int insertHos(HospitalDto hospitalDto);

	
	@Select(" SELECT * FROM HOSPITAL_USER WHERE HOSPITALID = #{HospitalId} ")
	HospitalDto HospitalLogChk(String hospitalId);

	@Select("SELECT HOSPITALNAME FROM HOSPITAL_USER WHERE HOSPITALNAME = #{hospitalkey}")
	HospitalDto HosSelect(String hospitalkey);

	@Select(" select * from BOOK where HOSPITALNAME=(select HOSPITALNAME from HOSPITAL_USER where HOSPITALID=#{userid} ) AND CHK=0 order by BOOKDATE asc ")
	List<ResDto> bookSelect(String userid);


	@Select(" select * from VACCBOOK where HOSPITALNAME=(select HOSPITALNAME from HOSPITAL_USER where HOSPITALID=#{userid} ) AND CHK=0 order by BOOKDATE asc ")
	List<ResDto> vaccBookSelect(String userid);

	@Update("update BOOK set CHK='1' where BOOKID=#{bookId} ")
	int bookagree(int bookId);

	@Update("update VACCBOOK set CHK='1' where BOOKID=#{vaccbookId} ")
	int vaccbookagree(int vaccbookId);


	@Select(" select * from BOOK where HOSPITALNAME=(select HOSPITALNAME from HOSPITAL_USER where HOSPITALID=#{userid} ) AND CHK=1 order by BOOKDATE asc ")
	List<ResDto> agreebook(String userid);

	@Select(" select * from VACCBOOK where HOSPITALNAME=(select HOSPITALNAME from HOSPITAL_USER where HOSPITALID=#{userid} ) AND CHK=1 order by BOOKDATE asc ")
	List<ResDto> agreevaccbook(String userid);


	
}
