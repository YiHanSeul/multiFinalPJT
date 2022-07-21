<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 펫 정보</title>
</head>

<body>
<form action="petInfoRes" method="get">
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
			
		
</form>			
</body>
</html>