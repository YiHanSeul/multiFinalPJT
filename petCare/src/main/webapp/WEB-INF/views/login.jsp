<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
	<form name="admin" action="/user/loginForm" method="post">
		<input type="text" name="userid" placeholder="user Id">
		<input type="password" name="userpw" placeholder="user Pw">
		<input type="submit" value="로그인">
	</form>
</body>
</html>