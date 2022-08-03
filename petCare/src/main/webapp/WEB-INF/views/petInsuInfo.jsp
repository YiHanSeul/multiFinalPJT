<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
.main {
	position: absolute;
		left: 45%;
/* 	text-align: center;
	margin-top: 1%;
	right: 3%;
	font-size: 20px;
	padding: 8px; */
}

#main1 {
/* 	margin-top: 12%; */
}

#
#main1_ {
	
}

#petName {
/* 	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 3px solid black; */
}
#imageLeft img{
	position:relative;
	float: left;
	margin-top: 4.5%;
}
#imageRight img{
 width:60%;
margin-top: 3%;
position:relative;

float: right;
}
#mainInfo{
	bottom: 80%;
}
#mainName{

	bottom: 75%;
}
#mainGender{
	bottom: 70%;
}
#mainAge{
	bottom: 65%;
}
#mainType{
	bottom: 60%;
}
#mainType_{
	bottom: 55%;
}
#mainType_check{
	bottom: 250px;
}
#mainSubmit{
	
	
}
#main_submit input{
	position: absolute;
	left: 60%;
	bottom: 50%;
}
#protect{
	margin-top: 25%;
	left: 8%;
	
	font-size: 50pt;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	
	
	<div id="imageLeft">
		<img src="/resources/img/Insu2.jpg">
	</div>
	
	<div id="imageRight">
		<img src="/resources/img/Insu.jpg">
		
		
	</div>
	
	
	
	<form action="petInsuInfoRes">
	
		<div class="main" id="mainInfo">
			<h2>반려견에 대한 정보를 알려주세요.</h2>
		</div>
		
	
 		<div class="main" id="mainName">

			<h4>이름 : <input type="text" name="petName" id="petName"> 입니다.</h4>

		</div>
		<div class="main" id="mainGender">
			<h4>성별 : 남 <input type="radio" name="petGender" id="petGender1" value="남" checked>&nbsp; 
					여 <input type="radio" name="petGender" id="petGender2" value="여"></h4>
		</div>
		
<!--  		이름과 성별은 필요 없어서 I를 붙이지 아니함 -->
		<div class="main" id="mainAge">
			<h4>나이 : 6개월 미만<input type="radio" name="petAgeI" id="petAgeI1" value="0.5" checked>&nbsp; 
					1년 미만<input type="radio" name="petAgeI" id="petAgeI2" value="1">&nbsp; 	
					2년 미만<input type="radio" name="petAgeI" id="petAgeI3" value="2">&nbsp;
					4년 미만<input type="radio" name="petAgeI" id="petAgeI4" value="4">&nbsp;
					6년 미만<input type="radio" name="petAgeI" id="petAgeI5" value="6"></h4>
		</div>


		<div class="main" id="mainType">
			<h4>종류 : 초소형견(4kg 미만) <input type="radio" name="petTypeI" id="petTypeI1" value="초소형견" checked> &nbsp; 
					소형견(10kg 미만) <input type="radio" name="petTypeI" id="petTypeI2" value="소형견"> &nbsp; 
					중형견(25kg미만) <input type="radio" name="petTypeI" id="petTypeI3" value="중형견"> &nbsp; 	
					대형견(25kg 이상) <input type="radio" name="petTypeI" id="petTypeI4" value="대형견"> &nbsp;</h4>
		</div>
		
	
		<div class="main" id="mainType_">
			<h4>맹견 <input type="checkbox" name="petTypeI_" id="petTypeI_" value="맹견">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;맹견은 따로 체크해주세요! (초소형견은 맹견이 없습니다!)</h4>
		</div>
	
		<div class="main" id="mainType_check"></div>

		<div id=main_submit>
			<h3><input type="submit" value="다음" id="mainSubmit" class="btn btn-warning"></h3>
		</div>
	
    
	
	</form>
	
	
	<div class="main" id="protect">
		우리 아이 지킴이
	</div>
 	<script>

document.getElementById("mainSubmit").onclick = function() {isName(); isType1();};

function isName() {
	var input = document.getElementById("petName").value;
	console.log(input);
	if(input == "" || input == null){
		alert("펫이름이 없습니다!");
	}
}
function test() {
	  
    if (document.getElementById("petTypeI_").checked == true) {	//하나만 가져오는거라서 for문을 쓸 필요가 없음
        const bite = (document.getElementById("petTypeI_").value);
}
}
function isType1(){
	if (document.getElementById("petTypeI_").checked == true){
		let bite = (document.getElementById("petTypeI_").value);
		let type = document.querySelector("input[name=petTypeI]:checked").value;
		console.log(type);
		 console.log(bite);
		if(type == "초소형견" && bite == "맹견"){
			alert("초소형견은 맹견이 없습니다!");
		} 
	}



	}



</script>
</body>
</html>