<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/index.js"></script>

</head>
<body>
	<div>
		<a href="/user/join">회원가입</a>
	</div>
	<div id="loginChk"><a href="/user/login">로그인</a></div>
	<div><a href="/hos/loginHos">로그인</a></div>
<span id="loginChk2"  style="display:none">${UserId }님 안녕하세요</span>
</body>
</html>