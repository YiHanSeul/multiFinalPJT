package com.petcare.home.model.dto;

import java.util.Date;

public class BoardDto {
	private int boardCnt;
	private Date comDate;
	private String comContent;
	private String comTitle;
	private String field;
	private int userKey;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int boardCnt, Date comDate, String comContent, String comTitle, String field, int userKey) {
		super();
		this.boardCnt = boardCnt;
		this.comDate = comDate;
		this.comContent = comContent;
		this.comTitle = comTitle;
		this.field = field;
		this.userKey = userKey;
	}

	public int getBoardCnt() {
		return boardCnt;
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

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}
	
	
	
	
	
}
