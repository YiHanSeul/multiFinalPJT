package com.petcare.home.model.dto;

public class PetDtoI {
	//보험명, 보험료, 성별, 나이, 품종
	private String petNameI; //보험명(펫의 이름이 아님)
	private float petAgeI;
	private String petTypeI;
	private int petPriceI;
	public PetDtoI() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PetDtoI(String petNameI, float petAgeI, String petTypeI, int petPriceI) {
		super();
		this.petNameI = petNameI;
		this.petAgeI = petAgeI;
		this.petTypeI = petTypeI;
		this.petPriceI = petPriceI;
	}
	public String getPetNameI() {
		return petNameI;
	}
	public void setPetNameI(String petNameI) {
		this.petNameI = petNameI;
	}
	public float getPetAgeI() {
		return petAgeI;
	}
	public void setPetAgeI(float petAgeI) {
		this.petAgeI = petAgeI;
	}
	public String getPetTypeI() {
		return petTypeI;
	}
	public void setPetTypeI(String petTypeI) {
		this.petTypeI = petTypeI;
	}
	public int getPetPriceI() {
		return petPriceI;
	}
	public void setPetPriceI(int petPriceI) {
		this.petPriceI = petPriceI;
	}
	
	
}
