<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/user/userMypageRes" method="get">
	<input type="text" placeholder="${userphone }" name="userphone">
	<input type="submit" value="수정">
</form>
</body>
</html>