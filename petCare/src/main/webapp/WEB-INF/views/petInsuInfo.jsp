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
	position: relative;
	text-align: center;
	margin-top: 1%;
	right: 3%;
	font-size: 20px;
	padding: 8px;
}

#main1 {
	margin-top: 12%;
}

#
#main1_ {
	
}

#petName {
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

			이름 : <input type="text" name="petName" id="petName"> 입니다.

		</div>
		<div class="main">

			성별 : 남 <input type="radio" name="petGender" id="petGender1" value="남"
				checked>&nbsp; 여 <input type="radio" name="petGender"
				id="petGender2" value="여">

		</div>
		<!-- 이름과 성별은 필요 없어서 I를 붙이지 아니함 -->
		<div class="main">
			나이 : 6개월 미만<input type="radio" name="petAgeI" id="petAgeI1" value="0.5" checked>&nbsp; 
					1년 미만<input type="radio" name="petAgeI" id="petAgeI2" value="1">&nbsp; 	
					2년 미만<input type="radio" name="petAgeI" id="petAgeI3" value="2">&nbsp;
					4년 미만<input type="radio" name="petAgeI" id="petAgeI4" value="4">&nbsp;
					6년 미만<input type="radio" name="petAgeI" id="petAgeI5" value="6">
		</div>


		<div class="main">
			종류 : 초소형견(4kg 미만) <input type="radio" name="petTypeI" id="petTypeI1" value="초소형견" checked> &nbsp; 
					소형견(10kg 미만) <input type="radio" name="petTypeI" id="petTypeI2" value="소형견"> &nbsp; 
					중형견(25kg미만) <input type="radio" name="petTypeI" id="petTypeI3" value="중형견"> &nbsp; 	
					대형견(25kg 이상) <input type="radio" name="petTypeI" id="petTypeI4" value="대형견"> &nbsp;
		</div>
		<div class="main">
			맹견 <input type="checkbox" name="petTypeI_" id="petTypeI_" value="맹견">

		</div>

		<div class="main">맹견은 따로 체크해주세요! (초소형견은 맹견이 없습니다!)</div>

		<div id="main_" class="main">
			<input type="submit" value="제출" id="main_submit">

		</div>
	</form>
	<script>

document.getElementById("main_submit").onclick = function() {isName(); isType1();};

function isName() {
	var input = document.getElementById("petName").value;
	console.log(input);
	if(input == "" || input == null){
		alert("펫이름이 없습니다!");
	}
}

</script>
	<script>
	
	
	document.getElementById("main_button").onclick = function() {isType(); test();} //이벤트 2개를 주려면 합쳐야 함
	function isType(){
	type = document.querySelector("input[name=petTypeI]:checked").value;	//name을 가져와서 클릭되어있는거에 값을 가져옴
	}
	
	
    function test() {
  
        if (document.getElementById("petTypeI_").checked == true) {	//하나만 가져오는거라서 for문을 쓸 필요가 없음
            const bite = (document.getElementById("petTypeI_").value);
    }
}
    
    


</script>
	<script>
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