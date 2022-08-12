<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/resources/css/userInsert.css" rel="stylesheet" type="text/css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
#main{
	display: flex;
    flex-direction: column;
	margin-left: 10%;
	margin-right: 10%;
	float: left;
	width: 80%;
	position: relative;
}

#protect{
	margin-top: 25%;
	left: 8%;
	
	font-size: 50pt;
}
.dropdown{
display: flex;
    flex-direction: column;
	margin-left: 10%;
	float: left;
	width: 55%;
	position: relative;
}

select.box {
  width: 70%;
  height: 50px;
  box-sizing: border-box;
  margin-left: 5px;
  padding: 5px 0 5px 10px;
  border-radius: 4px;
  border: 1px solid #d9d6d6;
  color: #383838;
  background-color: #ffffff;
  font-family: 'Montserrat', 'Pretendard', sans-serif;
}

option {
  font-size: 16px;
}

.info .box#domain-list option {
  font-size: 14px;
  background-color: #ffffff;
}
#ageText{
width: 20pt;
}

.list{
margin-bottom:15pt;
}
#mainSubmit{
width: 100%;
}
.list{
font-size: 18pt;
}
#petName{
width:68%;
}
#mtitle{
font-size: 25pt;
font-weight: bold;
color: orange;
}
.search-top-container {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
   height: 120px;
   background: #FAFAD2;
   opacity: 0.7;
   margin-top:70pt;
}
#stt {
   font-size: 30pt !important;
   font-weight: bolder !important;
   opacity: 1 !important;
}
.footer {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
    background: #FAFAD2;
    margin-top: 35%;
    height: 100%;
}
.footer-top {
    padding: 43px 0 35px;
}
.container {
    margin: auto;
    max-width: 1200px;
    padding: 0;
}
.footer .container {
    display: flex;
    justify-content: space-between;
    position: relative;
}
@media (min-width: 1264px)
.container {
    max-width: 1185px;
}
.footer-col:first-child {
    max-width: 524px;
}
.footer-info {
    margin: 0 -8px;
}
.footer-link {
    margin: 0 -8px;
}
.footer-link li {
    float: left;
    padding: 0 2px;
}
*, :after, :before {
    box-sizing: inherit!important;
}
.footer-link:after {
    content: "";
    display: block;
    clear: both;
}
@media(max-width:1225px){
	.search-top-container{
		display:none;
	}
}
@media(max-width:1625px){
	.footer{
		display:none;
	}
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
   <div class="search-top-container">
      <h3 class="title" id="stt">&nbsp;&nbsp;&nbsp;&nbsp;맞춤 보험 조회</h3>
   </div>
<div id="join-form2">
<div id="main">
	<form action="petInsuInfoRes">
	
		<div class="list" id="mainInfo">
			<span id="mtitle">반려견 정보입력</span>
		</div>
		
	
 		<div class="list" id="mainName">

		이름 :   &nbsp;<input type="text" name="petName" id="petName">

		</div>
		<div class="list" id="mainGender">
		성별 : 
		&nbsp;남 <input type="radio" name="petGender" id="petGender1" value="남" checked>&nbsp; 
		여 <input type="radio" name="petGender" id="petGender2" value="여">
		</div>
		
<!--  		이름과 성별은 필요 없어서 I를 붙이지 아니함 -->
		<div class="list" id="mainAge">
		나이 : <select class="box" name="petAgeI" id="domain-list">
				  <option value="0.5" id="petAgeI1">6개월 미만</option>
				  <option value="1" id="petAgeI1">1살 미만</option>
				  <option value="2" id="petAgeI1">2살 미만</option>
				  <option value="4" id="petAgeI1">4살 미만</option>
				  <option value="6" id="petAgeI1">6살 미만</option>
				</select>
		</div>


		<div class="list" id="mainType">
		종류 : <select class="box" name="petTypeI" id="domain-list">
				  <option id="petTypeI1" value="초소형견">초소형견</option>
				  <option id="petTypeI2" value="소형견">소형견</option>
				  <option id="petTypeI3" value="중형견">중형견</option>
				  <option id="petTypeI4" value="대형견">대형견</option>
				</select>
		</div>
		
	
		<div class="list" id="mainType_">
		맹견 : &nbsp;<input type="checkbox" name="petTypeI_" id="petTypeI_" value="맹견">
		</div>
	
		<div class="main" id="mainType_check"></div>

		<div id=main_submit>
			<h3><input type="submit" value="다음" id="mainSubmit" class="btn btn-warning"></h3>
		</div>
    	
	</form>
</div>
</div>
 <script>

		document.getElementById("mainSubmit").onclick = function() {isName();};
		
		function isName() {
			var input = document.getElementById("petName").value;
			if(input == "" || input == null){
				swal('입력 오류',"펫 이름이 비어있어요!", 'error');
			}
			var type = document.getElementsByName("petTypeI");
			let checkbox = document.getElementById("petTypeI_");
			const is_checked = checkbox.checked;
			for( value of type){
				var type1 = value.value;
			}
			if(type1 == "초소형견" && is_checked == true){
				swal('입력 오류',"초소형견은 맹견일 수 없습니다.", 'error');
			}

		}
		function test() {
			  
		    if (document.getElementById("petTypeI_").checked == true) {	//하나만 가져오는거라서 for문을 쓸 필요가 없음
		        const bite = (document.getElementById("petTypeI_").value);
		}
		}
		
		function isType1(){
			if (document.getElementsByName("petTypeI"[0].value) == "초소형견"){
				let bite = document.getElementsByName("petTypeI");
				let type = document.querySelector("input[name=petTypeI]:checked").value;
				console.log(type);
				console.log(bite);
				if(type == "초소형견" && bite == "맹견"){
				} 
			}
			

		}
</script>
<footer class="footer">
	<div class="footer-top">
		<div class="container">
			<div class="footer-col">
				<ul class="footer-info">
					<li>MUNGMUNG NETWORKS</li>
					<li>대표이사 홍길동투더 그투더 라미</li>
					<li>사업자등록번호 123456797</li>
					<li> 서울 송파구 올림픽로 240 잠실동 40-1 </li>
					<li>TEL. 1661-2000</li>
					<li>E-mail ㅋㅋㅋ@아모르겟따.com</li>
					<li>Copyright © 푸터위치 고정 어케함. All Rights reserved.</li>
				</ul>
			</div>
			<div class="footer-col">
				<ul class="footer-link">
					<li><a href="">회사소개</a></li>
					<li><a href="">이용약관</a></li>
					<li><a href="">개인정보처리방침</a></li>
					<li><a href="">광고문의·관리</a></li>
					<li><a href="">고객의소리</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>
</body>
</html>