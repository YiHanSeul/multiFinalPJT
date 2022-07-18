<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/user/insertUser" method="get">

	
	<div>
		아이디
		<input type="text" name=userid>
	</div>
	<div>
		비밀번호
		<input type="text" name=userpw>
	</div>
	<div>
		이름
		<input type="text" name=username>
	</div>
	<div>
		닉네임
		<input type="text" name=usernick>
	</div>
	<div>
		이메일
		<input type="text" name=useremail>
	</div>
	<div>
		전화번호
		<input type="text" name=userphone>
	</div>
	
	<input type="submit" value="가입">

</form>
</body>
</html>