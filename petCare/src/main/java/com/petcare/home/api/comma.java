package com.petcare.home.api;

public class comma {
	public String Test(int data) {
		int result = data;
		return new java.text.DecimalFormat("##,###").format(result);
	}
}
