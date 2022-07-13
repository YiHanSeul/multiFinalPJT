package com.petcare.home.model.dto;

public class AdminDto {
	private String adminid;
	private String adminpw;
	private String grade;

	public AdminDto() {
		super();
	}

	public AdminDto(String adminid, String adminpw, String grade) {
		super();
		this.adminid = adminid;
		this.adminpw = adminpw;
		this.grade = grade;
	}

	public String getAdminid() {
		return adminid;
	}

	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}

	public String getAdminpw() {
		return adminpw;
	}

	public void setAdminpw(String adminpw) {
		this.adminpw = adminpw;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "AdminDto [adminid=" + adminid + ", adminpw=" + adminpw + ", grade=" + grade + "]";
	}

}
