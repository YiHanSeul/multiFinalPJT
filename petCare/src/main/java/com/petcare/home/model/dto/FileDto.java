package com.petcare.home.model.dto;

public class FileDto {
	private  String filename;
	private String filepath;
	public FileDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FileDto(String filename, String filepath) {
		super();
		this.filename = filename;
		this.filepath = filepath;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	@Override
	public String toString() {
		return "FileDto [filename=" + filename + ", filepath=" + filepath + "]";
	}
	
}
