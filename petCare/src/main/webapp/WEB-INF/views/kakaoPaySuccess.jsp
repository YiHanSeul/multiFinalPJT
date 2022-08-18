<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
   background-color: #F7E600;
   text-align: left;
   margin-top: 30%;
}
</style>
</head>
<body>
 
<b>카카오페이 결제가 정상적으로 완료되었습니다.</b><br>
상품명:&nbsp;${info.item_name}<br/>
결제금액:&nbsp;${info.amount.total}<br/>
결제수단:&nbsp;${info.payment_method_type}<br/>

</body>
</html>