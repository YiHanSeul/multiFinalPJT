<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link href="/resources/css/userUpdate.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>수정 페이지</h1>
<form action="/user/userMypageRes" method="get">
	닉네임 변경: <input type="text" placeholder="바꿀 닉네임을 입력해주세요." name="usernick" style="width:40%">
	<input type="submit" value="수정">
	
</form>
<form action="/user/userMypageRes" method="get">
	이메일 변경: <input type="text" placeholder="바꿀 이메일을 입력해주세요." name="useremail" style="width:40%">
	<input type="submit" value="수정">
</form>

<form action="/user/userMypageRes" method="get">
	전화번호 변경:  <input type="text" placeholder="바꿀 전화번호를 입력해주세요." name="userphone" style="width:40%">
	<input type="submit" value="수정">
</form>
<div id="a">
<a href="javascript:window.history.back();" class="btn btn-warning">뒤로가기</a>
</div>
</body>
</html>