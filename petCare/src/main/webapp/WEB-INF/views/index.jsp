<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/index.js"></script> 
<script type="text/javascript" src="/resources/js/index.js"></script>

</head>
<body>
	<div>
		<a href="/user/join">회원가입</a>
	</div>
	<div><a href="/user/login">로그인 유저</a></div>
	<div><a href="/user/userMypage">마이페이지</a></div>
	<div><a href="/hos/loginHos">로그인 병원</a></div>
<span id="loginChk2"  style="display:none">${userid }님 안녕하세요</span>

	<div><a href="/hos/ocr">ocr 테스트</a></div>
</body>
</html>