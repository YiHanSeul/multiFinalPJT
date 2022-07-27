<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="petInsuInfoRes">
	반려견 이름: <input type="text" name="petName"><br>
	반려견 성별: 남<input type="radio" name="petGender" id="petGender" value="남">
					여<input type="radio" name="petGender" id="petGender" value="여">
	<br> <!-- 이름과 성별은 필요 없어서 I를 붙이지 아니함 -->
	반려견 나이: 6개월 미만<input type="radio" name="petAgeI" id="petAgeI" value="0.5">
					1년 미만<input type="radio" name="petAgeI" id="petAgeI" value="1">
					2년 미만<input type="radio" name="petAgeI" id="petAgeI" value="2">
					4년 미만<input type="radio" name="petAgeI" id="petAgeI" value="4">
					6년 미만<input type="radio" name="petAgeI" id="petAgeI" value="6">
	
	<br>
	반려견 종류: 초소형견<input type="radio" name="petTypeI" id="petTypeI" value="초소형견">
					소형견<input type="radio" name="petTypeI" id="petTypeI" value="소형견">
					중형견<input type="radio" name="petTypeI" id="petTypeI" value="중형견">
					대형견<input type="radio" name="petTypeI" id="petTypeI" value="대형견">
					맹견<input type="checkbox" name="petTypeI2" id="petTypeI2" value="맹견">
					<br>
	맹견은 따로 체크해주세요!	(초소형견은 맹견이 없습니다!)
				
	<br>
	<input type="submit" value="제출">
	
</form>
</body>
</html>