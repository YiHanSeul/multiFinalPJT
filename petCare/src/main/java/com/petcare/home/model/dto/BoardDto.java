package com.petcare.home.model.dto;


public class BoardDto {
	private int boardCnt;
	private String comDate;
	private String comContent;
	private String comTitle;
	private String field1;
	private int userKey;
	private int rating;
	/**
	 * 
	 */
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param boardCnt
	 * @param comDate
	 * @param comContent
	 * @param comTitle
	 * @param field1
	 * @param userKey
	 * @param rating
	 */
	public BoardDto(int boardCnt, String comDate, String comContent, String comTitle, String field1, int userKey,
			int rating) {
		super();
		this.boardCnt = boardCnt;
		this.comDate = comDate;
		this.comContent = comContent;
		this.comTitle = comTitle;
		this.field1 = field1;
		this.userKey = userKey;
		this.rating = rating;
	}
	public int getBoardCnt() {
		return boardCnt;
	}
	public void setBoardCnt(int boardCnt) {
		this.boardCnt = boardCnt;
	}
	public String getComDate() {
		return comDate;
	}
	public void setComDate(String comDate) {
		this.comDate = comDate;
	}
	public String getComContent() {
		return comContent;
	}
	public void setComContent(String comContent) {
		this.comContent = comContent;
	}
	public String getComTitle() {
		return comTitle;
	}
	public void setComTitle(String comTitle) {
		this.comTitle = comTitle;
	}
	public String getField1() {
		return field1;
	}
	public void setField1(String field1) {
		this.field1 = field1;
	}
	public int getUserKey() {
		return userKey;
	}
	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "BoardDto [boardCnt=" + boardCnt + ", comDate=" + comDate + ", comContent=" + comContent + ", comTitle="
				+ comTitle + ", field1=" + field1 + ", userKey=" + userKey + ", rating=" + rating + "]";
	}   

	
	
}
