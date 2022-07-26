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
	반려견 이름: <input type="text" name="petInsuName"><br>
<!-- 	<input type="text" name="petInsuPrice"> -->
	반려견 성별: 남<input type="radio" name="petInsuGender" id="petInsuGender" value="남">
					여<input type="radio" name="petInsuGender" id="petInsuGender" value="여">
	<br>
	반려견 나이: 6개월 미만<input type="radio" name="petInsuAge" id="petInsuAge" value="0.5">
					1년 미만<input type="radio" name="petInsuAge" id="petInsuAge" value="1">
					2년 미만<input type="radio" name="petInsuAge" id="petInsuAge" value="2">
					4년 미만<input type="radio" name="petInsuAge" id="petInsuAge" value="4">
					6년 미만<input type="radio" name="petInsuAge" id="petInsuAge" value="6">
	
	<br>
	반려견 종류: 초소형견<input type="radio" name="petInsuType" id="petInsuType" value="초소형견">
					소형견<input type="radio" name="petInsuType" id="petInsuType" value="소형견">
					중형견<input type="radio" name="petInsuType" id="petInsuType" value="중형견">
					대형견<input type="radio" name="petInsuType" id="petInsuType" value="대형견">
					맹견<input type="checkbox" name="petInsuType2" id="petInsuType2" value="맹견">
					<br>
	맹견은 따로 체크해주세요!	
				
	<br>
	<input type="submit" value="제출">
	
	
<!-- 	<form action="petInfoRes" method="get">
반려견이름 <input type="text" name="petName"><br>
반려견나이 <input type="text" name="petAge"><br>
반려견성별 남<input type="radio" id="petGender" name="petGender" value="남">
				 여<input type="radio" id="petGender" name="petGender" value="여">

<br>
반려견품종 <input type="text" id="petType" name="petType"><br>
중성화여부 O<input type="radio" name="petNe" value="O" id="petNe">
			X<input type="radio" name="petNe" value="X" id="petNe"><br>
예방접종현황 A<input type="checkbox"  value="A" name="petVac">
 				B<input type="checkbox" value="B" name="petVac"><br>
 				C<input type="checkbox" value="C" name="petVac"><br>
			
			<input type="submit" value="전송">
			 -->
</form>
</body>
</html>