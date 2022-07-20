<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/hos/insertHos" method="post" enctype="multipart/form-data">
	<div>
		병원명
		<input type="text" name=HospitalName>
	</div>
	<div>
		아이디
		<input type="text" name=HosPitalId>
	</div>
	<div>
		비밀번호
		<input type="password" name=HospitalPw>
	</div>
	<div>
		이메일
		<input type="text" name=HospitalEmail>
	</div>
	<div>
		전화번호
		<input type="text" name=HospitalPhone>
	</div>
	<div>
		주소
		<input type="text" name=HospitalAddr>
	</div>
	<div>
		사업자등록번호
		<!-- <input type="text" name=HospitalKey> -->
		<input type="file" name=file> 
	</div>
	<input type="submit" value="가입">
</form>

</body>
</html>