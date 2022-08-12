<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>회원 탈퇴 구현</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/userDelete.js"></script>
</head>
<body>
	<h4>
		회원 탈퇴를 원하시면 비밀번호를 입력해주세요!<br>
		<br>
	</h4>
	<h4>
		비밀번호 입력: <input type="text" name="userpw" id="userpw"> 
		<input type="button" value="회원탈퇴" class="btn btn-warning" onclick="check()">
	</h4>
</body>
</html>