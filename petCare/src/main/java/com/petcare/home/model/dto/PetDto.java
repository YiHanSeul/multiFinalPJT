package com.petcare.home.model.dto;

public class PetDto {
	private int petKey;
	private int UserKey;
	private String petName;
	private int petAge;
	private String petGender;
	private String petType;
	private String petNe;
	public PetDto() {
		super();
	}
	public PetDto(int petKey, int userKey, String petName, int petAge, String petGender, String petType, String petNe) {
		super();
		this.petKey = petKey;
		UserKey = userKey;
		this.petName = petName;
		this.petAge = petAge;
		this.petGender = petGender;
		this.petType = petType;
		this.petNe = petNe;
	}
	public int getPetKey() {
		return petKey;
	}
	public void setPetKey(int petKey) {
		this.petKey = petKey;
	}
	public int getUserKey() {
		return UserKey;
	}
	public void setUserKey(int userKey) {
		UserKey = userKey;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getPetNe() {
		return petNe;
	}
	public void setPetNe(String petNe) {
		this.petNe = petNe;
	}
	@Override
	public String toString() {
		return "PetDto [petKey=" + petKey + ", UserKey=" + UserKey + ", petName=" + petName + ", petAge=" + petAge
				+ ", petGender=" + petGender + ", petType=" + petType + ", petNe=" + petNe + "]";
	}
	
}
