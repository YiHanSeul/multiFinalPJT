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
	<input type="hidden" value="${userkey}" name="userKey">
 	<div>
		<label>제목</label>
		<input type="text" name=comTitle>
	</div>
 	<div>
		<label>병원 이름</label>
		<input type="text" name=field1>
	</div>
	<div>
		<label>파일 첨부</label>	
		<input type="file" >
	</div>
	 
	<!--  <input type="file" name="file"> -->
	<div>
		<textarea cols=15 rows=15 name=comContent></textarea>
	</div>
	<div>
		<input type="submit" value="등록하기">
	</div>


</form>


	
</body>
</html>