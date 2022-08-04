package com.petcare.home.model.dto;

public class MapDto {
	private int mapkey;
	private String addr;
	private String hospitalname;
 	private double lat;
 	private double lng;
 	private int vacc1;
 	private int vacc2;
 	private int vacc3;
 	private int care;
	/**
	 * 
	 */
	public MapDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param mapkey
	 * @param addr
	 * @param hospitalname
	 * @param lat
	 * @param lng
	 * @param vacc1
	 * @param vacc2
	 * @param vacc3
	 * @param care
	 */
	public MapDto(int mapkey, String addr, String hospitalname, double lat, double lng, int vacc1, int vacc2, int vacc3,
			int care) {
		super();
		this.mapkey = mapkey;
		this.addr = addr;
		this.hospitalname = hospitalname;
		this.lat = lat;
		this.lng = lng;
		this.vacc1 = vacc1;
		this.vacc2 = vacc2;
		this.vacc3 = vacc3;
		this.care = care;
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
	public int getVacc1() {
		return vacc1;
	}
	public void setVacc1(int vacc1) {
		this.vacc1 = vacc1;
	}
	public int getVacc2() {
		return vacc2;
	}
	public void setVacc2(int vacc2) {
		this.vacc2 = vacc2;
	}
	public int getVacc3() {
		return vacc3;
	}
	public void setVacc3(int vacc3) {
		this.vacc3 = vacc3;
	}
	public int getCare() {
		return care;
	}
	public void setCare(int care) {
		this.care = care;
	}
	@Override
	public String toString() {
		return "MapDto [mapkey=" + mapkey + ", addr=" + addr + ", hospitalname=" + hospitalname + ", lat=" + lat
				+ ", lng=" + lng + ", vacc1=" + vacc1 + ", vacc2=" + vacc2 + ", vacc3=" + vacc3 + ", care=" + care
				+ "]";
	}   	
 
 	
}
