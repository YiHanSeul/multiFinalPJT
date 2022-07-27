<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/css/userInsert.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/userInsert.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

<img id="login-img" src="/resources/img/login.jpg">
<div id="test"><a href="/user/index"><img id="logo" src="/resources/img/logo.png"></a></div>
<div id="join-form">
<p id="join">Join</p>
<hr>
<form class="form-inline" action="/user/insertUser" method="get">
	<div class="join">
		<div class="text">ID</div>
		<input class="form-control" type="text" name="userid" id="userid" placeholder="아이디를 입력하세요.">
	</div>
	<div class="join">
		<button class="btn btn-warning" id="duplicate" type="button" onclick="check()">중복</button>
	</div>
	<div class="join">
		<div class="text">PASSWORD</div>
		<input class="form-control" type="password" name=userpw placeholder="비밀번호를 입력하세요.">
	</div>
	<div class="join">
	<div class="text">NAME</div>
		<input class="form-control" type="text" name=username placeholder="이름을 입력하세요.">
	</div>
	<div class="join">
	<div class="text">NICKNAME</div>
		<input class="form-control"  type="text" name=usernick placeholder="닉네임을 입력하세요.">
	</div>
	<div class="join">
	<div class="text">E-MAIL</div>
		<input class="form-control" type="email" name=useremail placeholder="이메일을 입력하세요.">
	</div>
	<div class="join">
	<div class="text">PHONE</div>
		<input class="form-control" type="text" name=userphone placeholder="전화번호를 입력하세요.">
	</div>
	<div>
	<input id="join-btn" class="btn btn-warning" type="submit" value="가입">
	</div>
</form>
</div>
</body>
</html>