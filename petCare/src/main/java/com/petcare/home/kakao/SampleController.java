package com.petcare.home.kakao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
 
import lombok.Setter;
import lombok.extern.java.Log;
 
//KakaoPay는 파라미터를 가질 수 없어 만들어야 함
//컨트롤러 쪽도 만들어줘야할꺼 같음!

@Controller
public class SampleController {

   
   
    @Autowired
    private KakaoPay kakaopay;
    
    public KakaoPay getKakaopay() {
      return kakaopay;
   }

   public void setKakaopay(KakaoPay kakaopay) {
      this.kakaopay = kakaopay;
   }

   @GetMapping("/pay")
    public String kakaoPayGet() {

        return "kakaoPay";
    }

    @PostMapping("/kakaoPay")
    public String kakaoPay() {

           return "redirect:" + kakaopay.kakaoPayReady();
        
    }
    
 
    
    @GetMapping("/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
   model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
        
    }
    
////////////////////////////////////////////////////////////////////////////////////
    
    @Autowired
    private KakaoPay1 kakaopay1;

   public KakaoPay1 getKakaopay1() {
      return kakaopay1;
   }

   public void setKakaopay1(KakaoPay1 kakaopay1) {
      this.kakaopay1 = kakaopay1;
   }

   @GetMapping("/pay1")
   public String kakaoPayGet1() {
      
      return "kakaoPay1";
   }
   
    @PostMapping("/kakaoPay1")
    public String kakaoPay1() {
       return "redirect:" + kakaopay1.kakaoPayReady1();
       
    }
    
    @GetMapping("/kakaoPaySuccess1")
    public void kakaoPaySuccess1(@RequestParam("pg_token") String pg_token, Model model) {
        model.addAttribute("info", kakaopay1.kakaoPayInfo1(pg_token));
        
    }
    
    
////////////////////////////////////////////////////////////////////////////////////    
    
    @Autowired
    private KakaoPay2 kakaopay2;
    
    public KakaoPay2 getKakaopay2() {
       return kakaopay2;
    }
    
    public void setKakaopay2(KakaoPay2 kakaopay2) {
       this.kakaopay2 = kakaopay2;
    }
    
    @GetMapping("/pay2")
    public String kakaoPayGet2() {
       
       return "kakaoPay2";
    }
    
    @PostMapping("/kakaoPay2")
    public String kakaoPay2() {
       
       return "redirect:" + kakaopay2.kakaoPayReady2();
       
    }
    
    @GetMapping("/kakaoPaySuccess2")
    public void kakaoPaySuccess2(@RequestParam("pg_token") String pg_token, Model model) {
       model.addAttribute("info", kakaopay2.kakaoPayInfo2(pg_token));
       
    }
    
    
    
/*    
    @Autowired
    private KakaoPay? kakaopay?;
    
    public KakaoPay? getKakaopay?() {
       return kakaopay?;
    }
    
    public void setKakaopay?(KakaoPay? kakaopay?) {
       this.kakaopay? = kakaopay?;
    }
    
    @GetMapping("/pay?")
    public String kakaoPayGet?() {
       
       return "kakaoPay?";
    }
    
    @PostMapping("/kakaoPay?")
    public String kakaoPay?() {
       return "redirect:" + kakaopay?.kakaoPayReady?();
       
    }
    
    @GetMapping("/kakaoPaySuccess?")
    public void kakaoPaySuccess?(@RequestParam("pg_token") String pg_token, Model model) {
       model.addAttribute("info", kakaopay?.kakaoPayInfo?(pg_token));
       
    }
    
    */
}