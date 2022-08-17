package com.petcare.home.kakao;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import lombok.extern.java.Log;


@Service
//@Log
   public class KakaoPay1 {
    
       private static final String HOST = "https://kapi.kakao.com";
       
       private KakaoPayReadyVO kakaoPayReadyVO;
       private KakaoPayApprovalVO kakaoPayApprovalVO;
       

       
       public String kakaoPayReady1() {
          
           RestTemplate restTemplate = new RestTemplate();
    
           // 서버로 요청할 Header
           HttpHeaders headers = new HttpHeaders();
           headers.add("Authorization", "KakaoAK " + "3f45ee9b6332b0c80a314c5b4f9ebfb7");
           headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
           headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
           
           // 서버로 요청할 Body
           MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
           params.add("cid", "TC0ONETIME");
           params.add("partner_order_id", "1");
           params.add("partner_user_id", "gorany");
           params.add("item_name", "소형견1");
           params.add("quantity", "1");
           params.add("total_amount", "42700");
           params.add("tax_free_amount", "100");
           params.add("approval_url", "http://54.176.130.216:8787/kakaoPaySuccess1");
           params.add("cancel_url", "http://54.176.130.216/kakaoPayCancel1");
           params.add("fail_url", "http://54.176.130.216/kakaoPaySuccessFail1");
    
            HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
    
           try {
               kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
               

               
               return kakaoPayReadyVO.getNext_redirect_pc_url();
    
           } catch (RestClientException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           } catch (URISyntaxException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           }
           
           return "/pay1";
           
       }

       
       public KakaoPayApprovalVO kakaoPayInfo1(String pg_token) {
    

           
           RestTemplate restTemplate = new RestTemplate();
    
           // 서버로 요청할 Header
           HttpHeaders headers = new HttpHeaders();
           headers.add("Authorization", "KakaoAK " + "3f45ee9b6332b0c80a314c5b4f9ebfb7");
           headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
           headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
    
           // 서버로 요청할 Body
           MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
           params.add("cid", "TC0ONETIME");
           params.add("tid", kakaoPayReadyVO.getTid());
           params.add("partner_order_id", "1");
           params.add("partner_user_id", "gorany");
           params.add("pg_token", pg_token);
           params.add("total_amount", "42700");
           
           HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
           
           try {
               kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);

             
               return kakaoPayApprovalVO;
           
           } catch (RestClientException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           } catch (URISyntaxException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           }
           
           return null;
       }
}