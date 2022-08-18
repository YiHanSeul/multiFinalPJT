<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/resources/css/hosInsert.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<img id="login-img" src="/resources/img/login.jpg">
	<div id="test">
		<a href="/"><img id="logo" src="/resources/img/logo.png"></a>
	</div>
	<div id="join-form">
		<p id="join">Join</p>
		<hr>
		<form class="form-inline" action="/hos/insertHos" method="post"
			enctype="multipart/form-data">
			<div class="join">
				<div class="text">병원명</div>
				<input class="form-control" type="text" name=HospitalName>
			</div>
			<div class="join">
				<div class="text">아이디</div>
				<input class="form-control" type="text" name=HospitalId>
			</div>
			<div class="join">
				<div class="text">비밀번호</div>
				<input class="form-control" type="password" name=HospitalPw>
			</div>
			<div class="join">
				<div class="text">이메일</div>
				<input class="form-control" type="text" name=HospitalEmail>
			</div>
			<div class="join">
				<div class="text">전화번호</div>
				<input class="form-control" type="text" name=HospitalPhone>
			</div>
			<div class="join">
				<div class="text">주소</div>
				<input class="form-control" type="text" name=HospitalAddr>
			</div>
			<div class="join">
				<div class="text">사업자등록번호</div>
				<input type="file" id="file" name="file" class="form-control upload-name">
			</div>
			
			
			
			
			<input id="join-btn" class="btn btn-warning" type="submit" value="가입">

		</form>
	</div>
</body>
</html>