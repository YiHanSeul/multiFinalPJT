<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/userJoin" method="get">

	<div>
		개인회원번호
		<input type="text" name=UserKey>
	</div>
	<div>
		아이디
		<input type="text" name=UserId>
	</div>
	<div>
		비밀번호
		<input type="text" name=UserPw>
	</div>
	<div>
		이름
		<input type="text" name=UserName>
	</div>
	<div>
		닉네임
		<input type="text" name=UserNick>
	</div>
	<div>
		이메일
		<input type="text" name=UserEmail>
	</div>
	<div>
		전화번호
		<input type="text" name=UserPhone>
	</div>
	
	<input type="submit" value="가입">

</form>
</body>
</html>