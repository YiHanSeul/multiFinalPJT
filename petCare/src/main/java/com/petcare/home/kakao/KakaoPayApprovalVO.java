package com.petcare.home.kakao;

import java.util.Date;

import lombok.Data;
 

public class KakaoPayApprovalVO {
    
    //response
    private String aid, tid, cid, sid;
    private String partner_order_id, partner_user_id, payment_method_type;
    private AmountVO amount;
    private CardVO card_info;
    private String item_name, item_code, payload;
    private Integer quantity, tax_free_amount, vat_amount;
    private Date created_at, approved_at;
    
    
    public KakaoPayApprovalVO() {
      super();
      // TODO Auto-generated constructor stub
   }




   public KakaoPayApprovalVO(String aid, String tid, String cid, String sid, String partner_order_id,
         String partner_user_id, String payment_method_type, AmountVO amount, CardVO card_info, String item_name,
         String item_code, String payload, Integer quantity, Integer tax_free_amount, Integer vat_amount,
         Date created_at, Date approved_at) {
      super();
      this.aid = aid;
      this.tid = tid;
      this.cid = cid;
      this.sid = sid;
      this.partner_order_id = partner_order_id;
      this.partner_user_id = partner_user_id;
      this.payment_method_type = payment_method_type;
      this.amount = amount;
      this.card_info = card_info;
      this.item_name = item_name;
      this.item_code = item_code;
      this.payload = payload;
      this.quantity = quantity;
      this.tax_free_amount = tax_free_amount;
      this.vat_amount = vat_amount;
      this.created_at = created_at;
      this.approved_at = approved_at;
   }




   public String getAid() {
      return aid;
   }




   public void setAid(String aid) {
      this.aid = aid;
   }




   public String getTid() {
      return tid;
   }




   public void setTid(String tid) {
      this.tid = tid;
   }




   public String getCid() {
      return cid;
   }




   public void setCid(String cid) {
      this.cid = cid;
   }




   public String getSid() {
      return sid;
   }




   public void setSid(String sid) {
      this.sid = sid;
   }




   public String getPartner_order_id() {
      return partner_order_id;
   }




   public void setPartner_order_id(String partner_order_id) {
      this.partner_order_id = partner_order_id;
   }




   public String getPartner_user_id() {
      return partner_user_id;
   }




   public void setPartner_user_id(String partner_user_id) {
      this.partner_user_id = partner_user_id;
   }




   public String getPayment_method_type() {
      return payment_method_type;
   }




   public void setPayment_method_type(String payment_method_type) {
      this.payment_method_type = payment_method_type;
   }




   public AmountVO getAmount() {
      return amount;
   }




   public void setAmount(AmountVO amount) {
      this.amount = amount;
   }




   public CardVO getCard_info() {
      return card_info;
   }




   public void setCard_info(CardVO card_info) {
      this.card_info = card_info;
   }




   public String getItem_name() {
      return item_name;
   }




   public void setItem_name(String item_name) {
      this.item_name = item_name;
   }




   public String getItem_code() {
      return item_code;
   }




   public void setItem_code(String item_code) {
      this.item_code = item_code;
   }




   public String getPayload() {
      return payload;
   }




   public void setPayload(String payload) {
      this.payload = payload;
   }




   public Integer getQuantity() {
      return quantity;
   }




   public void setQuantity(Integer quantity) {
      this.quantity = quantity;
   }




   public Integer getTax_free_amount() {
      return tax_free_amount;
   }




   public void setTax_free_amount(Integer tax_free_amount) {
      this.tax_free_amount = tax_free_amount;
   }




   public Integer getVat_amount() {
      return vat_amount;
   }




   public void setVat_amount(Integer vat_amount) {
      this.vat_amount = vat_amount;
   }




   public Date getCreated_at() {
      return created_at;
   }




   public void setCreated_at(Date created_at) {
      this.created_at = created_at;
   }




   public Date getApproved_at() {
      return approved_at;
   }




   public void setApproved_at(Date approved_at) {
      this.approved_at = approved_at;
   }




   public class AmountVO {
       
       private Integer total, tax_free, vat, point, discount;

      public AmountVO() {
         super();
         // TODO Auto-generated constructor stub
      }

      public AmountVO(Integer total, Integer tax_free, Integer vat, Integer point, Integer discount) {
         super();
         this.total = total;
         this.tax_free = tax_free;
         this.vat = vat;
         this.point = point;
         this.discount = discount;
      }

      public Integer getTotal() {
         return total;
      }

      public void setTotal(Integer total) {
         this.total = total;
      }

      public Integer getTax_free() {
         return tax_free;
      }

      public void setTax_free(Integer tax_free) {
         this.tax_free = tax_free;
      }

      public Integer getVat() {
         return vat;
      }

      public void setVat(Integer vat) {
         this.vat = vat;
      }

      public Integer getPoint() {
         return point;
      }

      public void setPoint(Integer point) {
         this.point = point;
      }

      public Integer getDiscount() {
         return discount;
      }

      public void setDiscount(Integer discount) {
         this.discount = discount;
      }
       
       
    }


    
    
    public class CardVO {
       
       private String purchase_corp, purchase_corp_code;
       private String issuer_corp, issuer_corp_code;
       private String bin, card_type, install_month, approved_id, card_mid;
       private String interest_free_install, card_item_code;
      public CardVO() {
         super();
         // TODO Auto-generated constructor stub
      }
      public CardVO(String purchase_corp, String purchase_corp_code, String issuer_corp, String issuer_corp_code,
            String bin, String card_type, String install_month, String approved_id, String card_mid,
            String interest_free_install, String card_item_code) {
         super();
         this.purchase_corp = purchase_corp;
         this.purchase_corp_code = purchase_corp_code;
         this.issuer_corp = issuer_corp;
         this.issuer_corp_code = issuer_corp_code;
         this.bin = bin;
         this.card_type = card_type;
         this.install_month = install_month;
         this.approved_id = approved_id;
         this.card_mid = card_mid;
         this.interest_free_install = interest_free_install;
         this.card_item_code = card_item_code;
      }
      public String getPurchase_corp() {
         return purchase_corp;
      }
      public void setPurchase_corp(String purchase_corp) {
         this.purchase_corp = purchase_corp;
      }
      public String getPurchase_corp_code() {
         return purchase_corp_code;
      }
      public void setPurchase_corp_code(String purchase_corp_code) {
         this.purchase_corp_code = purchase_corp_code;
      }
      public String getIssuer_corp() {
         return issuer_corp;
      }
      public void setIssuer_corp(String issuer_corp) {
         this.issuer_corp = issuer_corp;
      }
      public String getIssuer_corp_code() {
         return issuer_corp_code;
      }
      public void setIssuer_corp_code(String issuer_corp_code) {
         this.issuer_corp_code = issuer_corp_code;
      }
      public String getBin() {
         return bin;
      }
      public void setBin(String bin) {
         this.bin = bin;
      }
      public String getCard_type() {
         return card_type;
      }
      public void setCard_type(String card_type) {
         this.card_type = card_type;
      }
      public String getInstall_month() {
         return install_month;
      }
      public void setInstall_month(String install_month) {
         this.install_month = install_month;
      }
      public String getApproved_id() {
         return approved_id;
      }
      public void setApproved_id(String approved_id) {
         this.approved_id = approved_id;
      }
      public String getCard_mid() {
         return card_mid;
      }
      public void setCard_mid(String card_mid) {
         this.card_mid = card_mid;
      }
      public String getInterest_free_install() {
         return interest_free_install;
      }
      public void setInterest_free_install(String interest_free_install) {
         this.interest_free_install = interest_free_install;
      }
      public String getCard_item_code() {
         return card_item_code;
      }
      public void setCard_item_code(String card_item_code) {
         this.card_item_code = card_item_code;
      }
       
       
    }
    
    
}