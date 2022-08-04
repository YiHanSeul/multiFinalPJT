package com.petcare.home.model.dto;

public class PetVaccDto {
	private int petVaccCode;
	private int userKey;
	private int petKey;
	private String vaccName;
	private String vaccMonth;
	private String nextVaccMonth;
	public PetVaccDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PetVaccDto(int petVaccCode, int userKey, int petKey, String vaccName, String vaccMonth,
			String nextVaccMonth) {
		super();
		this.petVaccCode = petVaccCode;
		this.userKey = userKey;
		this.petKey = petKey;
		this.vaccName = vaccName;
		this.vaccMonth = vaccMonth;
		this.nextVaccMonth = nextVaccMonth;
	}
	public int getPetVaccCode() {
		return petVaccCode;
	}
	public void setPetVaccCode(int petVaccCode) {
		this.petVaccCode = petVaccCode;
	}
	public int getUserKey() {
		return userKey;
	}
	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}
	public int getPetKey() {
		return petKey;
	}
	public void setPetKey(int petKey) {
		this.petKey = petKey;
	}
	public String getVaccName() {
		return vaccName;
	}
	public void setVaccName(String vaccName) {
		this.vaccName = vaccName;
	}
	public String getVaccMonth() {
		return vaccMonth;
	}
	public void setVaccMonth(String vaccMonth) {
		this.vaccMonth = vaccMonth;
	}
	public String getNextVaccMonth() {
		return nextVaccMonth;
	}
	public void setNextVaccMonth(String nextVaccMonth) {
		this.nextVaccMonth = nextVaccMonth;
	}
	@Override
	public String toString() {
		return "PetVaccDto [petVaccCode=" + petVaccCode + ", userKey=" + userKey + ", petKey=" + petKey + ", vaccName="
				+ vaccName + ", vaccMonth=" + vaccMonth + ", nextVaccMonth=" + nextVaccMonth + "]";
	}
	
	
	
}
