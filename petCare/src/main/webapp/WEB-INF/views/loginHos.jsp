<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 로그인창</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
 $(function(){
	 console.log("${text}")
		const chk="비활성"
	 if(chk== "${text}"){
		 alert("비활성화 상태입니다.");
	 }
 });
</script>
</head>
<body>
		<form name="hos" action="/hos/loginHosForm" method="post">
		<input type="text" name="HospitalId" placeholder="Hospital Id">
		<input type="password" name="HospitalPw" placeholder="Hospital Pw">
		<input id="chk" type="submit" value="로그인">
	</form>
</body>
</html>