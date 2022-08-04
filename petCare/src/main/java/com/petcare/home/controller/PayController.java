package com.petcare.home.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/jq")
public class PayController {
	
	@RequestMapping("/kakaopay.cls")
	@ResponseBody
	public String kakaopay() {
		try {
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection connectServer = (HttpURLConnection) address.openConnection();
			connectServer.setRequestMethod("POST");
			connectServer.setRequestProperty("Authorization", "KakaoAK 3f45ee9b6332b0c80a314c5b4f9ebfb7");
			connectServer.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connectServer.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=https://localhost:8787/jq/kakaopay.cls/success&fail_url=https://localhost:8787/fail&cancel_url=https://localhost:8787/cancel";
			OutputStream giver =  connectServer.getOutputStream(); //줄 수 있음
			DataOutputStream dataGiver = new DataOutputStream(giver);
			dataGiver.writeBytes(parameter); //바이트로 형변환
//			dataGiver.flush(); //비운다 =>넘겨준다
			dataGiver.close();
			int result = connectServer.getResponseCode(); //서버로 잘 통신함
			InputStream accept;
			if(result ==200) {
				accept = connectServer.getInputStream();
			}else {
				accept = connectServer.getErrorStream(); //에러가 날시 생성
			}
			InputStreamReader canRead = new InputStreamReader(accept);
			BufferedReader transformer = new BufferedReader(canRead);
			return transformer.readLine(); //본인은 비워짐
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "{\"result\":\"NO\"}";
		
	}
}
