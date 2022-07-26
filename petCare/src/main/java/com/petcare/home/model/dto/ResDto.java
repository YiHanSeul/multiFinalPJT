package com.petcare.home.model.dto;

public class ResDto {
	private int BookId;
	private String BookHour;
	private String BookDate;
	private String BookPetType;
	private String BookWhy;
	private int UserKey;
	private String HospitalName;
	
	public ResDto() {
		super(); 
	}

	public ResDto(int bookId, String bookHour, String bookDate, String bookPetType, String bookWhy, int userKey,
			String hospitalName) {
		super();
		BookId = bookId;
		BookHour = bookHour;
		BookDate = bookDate;
		BookPetType = bookPetType;
		BookWhy = bookWhy;
		UserKey = userKey;
		HospitalName = hospitalName;
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

	@Override
	public String toString() {
		return "ResDto [BookId=" + BookId + ", BookHour=" + BookHour + ", BookDate=" + BookDate + ", BookPetType="
				+ BookPetType + ", BookWhy=" + BookWhy + ", UserKey=" + UserKey + ", HospitalName=" + HospitalName
				+ "]";
	}
	
	
	
}