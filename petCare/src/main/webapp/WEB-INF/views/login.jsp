<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="admin" action="/user/loginForm" method="post">
		<input type="text" name="UserId" placeholder="User Id">
		<input type="password" name="UserPw" placeholder="User Pw">
		<input type="submit" value="로그인">
	</form>
</body>
</html>