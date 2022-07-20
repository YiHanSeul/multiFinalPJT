package com.petcare.home.model.dto;

public class PetDto {
	private int petKey;
	private String petName;
	private int petAge;
	private String petGender;
	private String petType;
	private String petNe;
	private String petVac1;
	private String petVac2;
	private String petVac3;
	public PetDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PetDto(int petKey, String petName, int petAge, String petGender, String petType, String petNe,
			String petVac1, String petVac2, String petVac3) {
		super();
		this.petKey = petKey;
		this.petName = petName;
		this.petAge = petAge;
		this.petGender = petGender;
		this.petType = petType;
		this.petNe = petNe;
		this.petVac1 = petVac1;
		this.petVac2 = petVac2;
		this.petVac3 = petVac3;
	}
	public int getPetKey() {
		return petKey;
	}
	public void setPetKey(int petKey) {
		this.petKey = petKey;
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
	public String getPetVac1() {
		return petVac1;
	}
	public void setPetVac1(String petVac1) {
		this.petVac1 = petVac1;
	}
	public String getPetVac2() {
		return petVac2;
	}
	public void setPetVac2(String petVac2) {
		this.petVac2 = petVac2;
	}
	public String getPetVac3() {
		return petVac3;
	}
	public void setPetVac3(String petVac3) {
		this.petVac3 = petVac3;
	}
	@Override
	public String toString() {
		return "PetDto [petKey=" + petKey + ", petName=" + petName + ", petAge=" + petAge + ", petGender=" + petGender
				+ ", petType=" + petType + ", petNe=" + petNe + ", petVac1=" + petVac1 + ", petVac2=" + petVac2
				+ ", petVac3=" + petVac3 + "]";
	}
	
	
	
}
