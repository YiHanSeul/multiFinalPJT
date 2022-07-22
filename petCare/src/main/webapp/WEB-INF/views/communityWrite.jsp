<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/board/write" method="post">
	<input type="hidden" value="${userkey }" name="userKey">
	<div>
		제목
		<input type="text" name=comTitle>
	</div>
	<div>
		파일 첨부
		<input type="file" >
	<!--  <input type="file" name="file"> -->
	</div>
	<div>
		<textarea cols=15 rows=15 name=comContent></textarea>
	</div>
	<div>
		<input type="submit" value="등록하기">
	</div>


</form>


	
</body>
</html>