<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.main {
	position: relative;
	text-align: center;
	margin-top: 1%;
	right: 3%;
	font-size: 20px;
	padding: 8px;
}
#main1{
	margin-top: 12%;
}
##main1_{

}
#main1_input{
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 3px solid black;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<form action="petInsuInfoRes">
	
		<div class="main" id="main1">
			
				이름 : <input type="text" name="petName" id="main1_input">
				입니다.
			
		</div>
		<div class="main">
			
				성별 : 남 <input type="radio" name="petGender" id="petGender" value="남">&nbsp; 
				여 <input type="radio" name="petGender" id="petGender" value="여">
			
		</div>
		<!-- 이름과 성별은 필요 없어서 I를 붙이지 아니함 -->
		<div class="main">
			나이 : 6개월 미만<input type="radio" name="petAgeI" id="petAgeI" value="0.5">&nbsp; 
			1년 미만<input type="radio" name="petAgeI" id="petAgeI" value="1">&nbsp; 
			2년 미만<input type="radio" name="petAgeI" id="petAgeI" value="2">&nbsp; 
			4년 미만<input type="radio" name="petAgeI" id="petAgeI" value="4">&nbsp; 
			6년 미만<input type="radio" name="petAgeI" id="petAgeI" value="6">
		</div>


		<div class="main">
			종류 : 초소형견 <input type="radio" name="petTypeI" id="petTypeI" value="초소형견">&nbsp; 
				소형견 <input type="radio" name="petTypeI" id="petTypeI" value="소형견"> &nbsp; 
				중형견 <input type="radio" name="petTypeI" id="petTypeI" value="중형견"> &nbsp; 
				대형견 <input type="radio" name="petTypeI" id="petTypeI" value="대형견"> &nbsp; 
				맹견 <input type="checkbox" name="petTypeI2" id="petTypeI2" value="맹견">
		</div>

<div class="main">
		맹견은 따로 체크해주세요! (초소형견은 맹견이 없습니다!)
</div>
		<div id="main_" class="main">
			<input type="submit" value="제출">
		</div>
	</form>
</body>
</html>