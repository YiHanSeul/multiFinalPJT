<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 펫 정보</title>
</head>

<body>
<form action="userMypage" method="get">
반려견이름 <input type="text" name="petName"><br>
반려견나이 <input type="text" name="petAge"><br>
반려견성별 남<input type="radio" id="gender" name="petGender" value="남">
				 여<input type="radio" id="gender" name="petGender" value="여">

<br>
예방접종현황 A<input type="checkbox"  value="A" name="petVac">
 				B<input type="checkbox" value="B" name="petVac"><br>
중성화여부 O<input type="radio" name="petN" value="O" id="N">
			X<input type="radio" name="petN" value="X" id="N"><br>
			
			<input type="submit" value="전송">
			
		
</form>			
</body>
</html>