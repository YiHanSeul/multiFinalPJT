package com.petcare.home.model.dto;

public class ResDto {
	private int BookId;
	private String BookHour;
	private String BookDate;
	private String BookPetType;
	private String BookWhy;
	private int UserKey;
	private String HospitalName;
	private String Vacc1;
	private String Vacc2;
	private String Vacc3;
	
	public ResDto() {
		super(); 
	}

	public ResDto(int bookId, String bookHour, String bookDate, String bookPetType, String bookWhy, int userKey,
			String hospitalName, String vacc1, String vacc2, String vacc3) {
		super();
		BookId = bookId;
		BookHour = bookHour;
		BookDate = bookDate;
		BookPetType = bookPetType;
		BookWhy = bookWhy;
		UserKey = userKey;
		HospitalName = hospitalName;
		Vacc1 = vacc1;
		Vacc2 = vacc2;
		Vacc3 = vacc3;
	}

	public int getBookId() {
		return BookId;
	}

	public void setBookId(int bookId) {
		BookId = bookId;
	}

	public String getBookHour() {
		return BookHour;
	}

	public void setBookHour(String bookHour) {
		BookHour = bookHour;
	}

	public String getBookDate() {
		return BookDate;
	}

	public void setBookDate(String bookDate) {
		BookDate = bookDate;
	}

	public String getBookPetType() {
		return BookPetType;
	}

	public void setBookPetType(String bookPetType) {
		BookPetType = bookPetType;
	}

	public String getBookWhy() {
		return BookWhy;
	}

	public void setBookWhy(String bookWhy) {
		BookWhy = bookWhy;
	}

	public int getUserKey() {
		return UserKey;
	}

	public void setUserKey(int userKey) {
		UserKey = userKey;
	}

	public String getHospitalName() {
		return HospitalName;
	}

	public void setHospitalName(String hospitalName) {
		HospitalName = hospitalName;
	}

	public String getVacc1() {
		return Vacc1;
	}

	public void setVacc1(String vacc1) {
		Vacc1 = vacc1;
	}

	public String getVacc2() {
		return Vacc2;
	}

	public void setVacc2(String vacc2) {
		Vacc2 = vacc2;
	}

	public String getVacc3() {
		return Vacc3;
	}

	public void setVacc3(String vacc3) {
		Vacc3 = vacc3;
	}

	@Override
	public String toString() {
		return "ResDto [BookId=" + BookId + ", BookHour=" + BookHour + ", BookDate=" + BookDate + ", BookPetType="
				+ BookPetType + ", BookWhy=" + BookWhy + ", UserKey=" + UserKey + ", HospitalName=" + HospitalName
				+ ", Vacc1=" + Vacc1 + ", Vacc2=" + Vacc2 + ", Vacc3=" + Vacc3 + "]";
	}

	
}