package com.petcare.home.model.dto;

import java.util.Date;

public class BoardDto {
	private int boardCnt;
	private Date comDate;
	private String comContent;
	private String comTitle;
	private String field1;
	private int userKey;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int boardCnt, Date comDate, String comContent, String comTitle, String field1, int userKey) {
		super();
		this.boardCnt = boardCnt;
		this.comDate = comDate;
		this.comContent = comContent;
		this.comTitle = comTitle;
		this.field1 = field1;
		this.userKey = userKey;
	}

	public int getBoardCnt() {
		return boardCnt;
	}

	@Override
	public String toString() {
		return "BoardDto [boardCnt=" + boardCnt + ", comDate=" + comDate + ", comContent=" + comContent + ", comTitle="
				+ comTitle + ", field1=" + field1 + ", userKey=" + userKey + "]";
	}

	public void setBoardCnt(int boardCnt) {
		this.boardCnt = boardCnt;
	}

	public Date getComDate() {
		return comDate;
	}

	public void setComDate(Date comDate) {
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
	
	
	
	
	
}
