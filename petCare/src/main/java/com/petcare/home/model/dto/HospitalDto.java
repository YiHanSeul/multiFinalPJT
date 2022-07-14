package com.petcare.home.model.dto;

public class HospitalDto {
	private String HospitalKey;
	private String HospitalName;
	private String HosPitalId;
	private String HospitalPw;
	private String HospitalEmail;
	private String HospitalPhone;
	private String HospitalAddr;
	private String Grade;
	private int HospitalChk ;
	public HospitalDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HospitalDto(String hospitalKey, String hospitalName, String hosPitalId, String hospitalPw,
			String hospitalEmail, String hospitalPhone, String hospitalAddr, String grade, int hospitalChk) {
		super();
		HospitalKey = hospitalKey;
		HospitalName = hospitalName;
		HosPitalId = hosPitalId;
		HospitalPw = hospitalPw;
		HospitalEmail = hospitalEmail;
		HospitalPhone = hospitalPhone;
		HospitalAddr = hospitalAddr;
		Grade = grade;
		HospitalChk = hospitalChk;
	}
	public String getHospitalKey() {
		return HospitalKey;
	}
	public void setHospitalKey(String hospitalKey) {
		HospitalKey = hospitalKey;
	}
	public String getHospitalName() {
		return HospitalName;
	}
	public void setHospitalName(String hospitalName) {
		HospitalName = hospitalName;
	}
	public String getHosPitalId() {
		return HosPitalId;
	}
	public void setHosPitalId(String hosPitalId) {
		HosPitalId = hosPitalId;
	}
	public String getHospitalPw() {
		return HospitalPw;
	}
	public void setHospitalPw(String hospitalPw) {
		HospitalPw = hospitalPw;
	}
	public String getHospitalEmail() {
		return HospitalEmail;
	}
	public void setHospitalEmail(String hospitalEmail) {
		HospitalEmail = hospitalEmail;
	}
	public String getHospitalPhone() {
		return HospitalPhone;
	}
	public void setHospitalPhone(String hospitalPhone) {
		HospitalPhone = hospitalPhone;
	}
	public String getHospitalAddr() {
		return HospitalAddr;
	}
	public void setHospitalAddr(String hospitalAddr) {
		HospitalAddr = hospitalAddr;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	public int getHospitalChk() {
		return HospitalChk;
	}
	public void setHospitalChk(int hospitalChk) {
		HospitalChk = hospitalChk;
	}
	@Override
	public String toString() {
		return "HospitalDto [HospitalKey=" + HospitalKey + ", HospitalName=" + HospitalName + ", HosPitalId="
				+ HosPitalId + ", HospitalPw=" + HospitalPw + ", HospitalEmail=" + HospitalEmail + ", HospitalPhone="
				+ HospitalPhone + ", HospitalAddr=" + HospitalAddr + ", Grade=" + Grade + ", HospitalChk=" + HospitalChk
				+ "]";
	}

}
