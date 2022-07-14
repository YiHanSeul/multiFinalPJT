package com.petcare.home.model.dto;

public class MapDto {
	private int mapkey;
	private String addr;
	private String hospitalname;
 	private double lat;
 	private double lng;
 
	public MapDto() {
		super();
	}
	 
	public MapDto(int mapkey, String addr, String hospitalname, double lat, double lng) {
		super();
		this.mapkey = mapkey;
		this.addr = addr;
		this.hospitalname = hospitalname;
		this.lat = lat;
		this.lng = lng;
	}
	public int getMapkey() {
		return mapkey;
	}
	public void setMapkey(int mapkey) {
		this.mapkey = mapkey;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getHospitalname() {
		return hospitalname;
	}
	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	@Override
	public String toString() {
		return "MapDto [mapkey=" + mapkey + ", addr=" + addr + ", hospitalname=" + hospitalname + ", lat=" + lat
				+ ", lng=" + lng + "]";
	}
 
 	
}
