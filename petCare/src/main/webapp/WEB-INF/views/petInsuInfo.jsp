<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/resources/css/petInsuInfo.css" rel="stylesheet" type="text/css">
<link href="/resources/css/userInsert.css" rel="stylesheet" type="text/css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
   <%@ include file="/WEB-INF/views/template/menu.jsp"%>
   <div class="search-top-container">
      <h3 class="title" id="stt">&nbsp;&nbsp;&nbsp;&nbsp;맞춤 보험 조회</h3>
   </div>
<div id="join-form2">
<div id="main">
   <form action="petInsuInfoRes">
   
      <div class="list" id="mainInfo">
         <span id="mtitle">반려견 정보입력</span>
      </div>
      
   
       <div class="list" id="mainName">

      이름 :   &nbsp;<input type="text" name="petName" id="petName">

      </div>
      <div class="list" id="mainGender">
      성별 : 
      &nbsp;남 <input type="radio" name="petGender" id="petGender1" value="남" checked>&nbsp; 
      여 <input type="radio" name="petGender" id="petGender2" value="여">
      </div>
      
      <div class="list" id="mainAge">
      나이 : <select class="box" name="petAgeI" id="domain-list">
              <option value="0.5" id="petAgeI1">6개월 미만</option>
              <option value="1" id="petAgeI1">1살 미만</option>
              <option value="2" id="petAgeI1">2살 미만</option>
              <option value="4" id="petAgeI1">4살 미만</option>
              <option value="6" id="petAgeI1">6살 미만</option>
            </select>
      </div>


      <div class="list" id="mainType">
      종류 : <select class="box" name="petTypeI" id="domain-list">
              <option id="petTypeI1" value="초소형견">초소형견</option>
              <option id="petTypeI2" value="소형견">소형견</option>
              <option id="petTypeI3" value="중형견">중형견</option>
              <option id="petTypeI4" value="대형견">대형견</option>
            </select>
      </div>
      
   
      <div class="list" id="mainType_">
      맹견 : &nbsp;<input type="checkbox" name="petTypeI_" id="petTypeI_" value="맹견">
      </div>
   
      <div class="main" id="mainType_check"></div>

      <div id=main_submit>
         <h3><input type="submit" value="다음" id="mainSubmit" class="btn btn-warning"></h3>
      </div>
       
   </form>
</div>
</div>
<footer class="footer">
   <div class="footer-top">
      <div class="container">
         <div class="footer-col">
            <ul class="footer-info">
               <li>MUNGMUNG NETWORKS</li>
               <li>대표이사 한세현종</li>
               <li>사업자등록번호 844-455-9887415</li>
               <li> 서울 송파구 올림픽로 240 잠실동 40-1 </li>
               <li>TEL. 1661-2000</li>
               <li>MUNGMUNGnetworks@gmail.com</li>
               <li>Copyright © MUNGMUNG NETWORKS. All Rights reserved.</li>
            </ul>
         </div>
      </div>
   </div>
</footer>
</body>
</html>