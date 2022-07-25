<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script>
function test(){
	if(confirm("회원 탈퇴하시겠습니까?")){
		location.href='userDelete'
	}else{
		alert("취소를 누르셨습니다.");
	}
}


</script>
</head>
<body>
<div style="display:inline-block;">
	<ul>
		<li style="cursor:pointer; margin: 8% 0px 20px 0px;"><h4><a href="#check1">보호자 정보관리</a></h4></li>
		<li style="cursor:pointer; margin: 0px 0px 20px 0px;"><h4><a href="#check2">마이펫 관리</a></h4></li>
		<li style="margin: 0px 0px 20px 0px;"><h4><a href="#">예약 목록</a></h4></li>
		<li style="cursor:pointer; margin: 0px 0px 20px 0px;"><h4>후기 관리</h4></li>
		<li style="cursor:pointer; margin: 0px 0px 20px 0px;"><h4>게시글 관리</h4></li>
		<li style="cursor:pointer; margin: 0px 0px 20px 0px;"><h4>1:1 문의</h4></li>
	</ul>
</div>
<!-- 페이지를 따로 만들지 말고 a태그로 같은 페이지에 있는 아이디로 이동하기 -->
<div style="display:inline-block;">
	<h1 style="margin:15% 0px 60px 800px;" id="">마이페이지</h1>
	<c:if test="${not empty dto }">
		<ul>
			<li style="list-style:none; margin:0px 0px 20px 15%;  border-top:2px solid;"><h4>아이디: ${dto.username}</h4></li>
			<li style="list-style:none; margin:0px 0px 20px 15%;"><h4>닉네임 : ${dto.usernick } <input id="usernick" class="btn btn-primary" type="button" value="수정" onclick="location.href='userChnick'"></h4></li>
			<li style="list-style:none; margin:0px 0px 20px 15%;"><h4>이메일: ${dto.useremail } <input id="useremail" class="btn btn-primary" type="button" value="수정" onclick="location.href='userChemail'"></h4></li>
			<li style="list-style:none; margin:0px 0px 20px 15%; border-bottom: 2px solid;"><h4>전화번호: ${dto.userphone } <input id="userphone" class="btn btn-primary" type="button" value="수정" onclick="location.href='userChphone'"></h4></li>
		</ul>
	</c:if>
</div>




<div style="display:inline-block">
<h1 style="margin:5% 0px 50px 1050px;" id="check2">나의 펫</h1>
<c:if test="${empty petDto }">
 	펫 정보가 없습니다.
 </c:if>
 <c:if test="${not empty petDto}">
 <c:forEach var="petDto" items="${petDto }">
 <ul>
 	<li style="list-style:none; margin:0px 0px 20px 27%; border-top:2px solid;"><h4>펫 이름: ${petDto.petName }</h4></li>
 	<li style="list-style:none; margin:0px 0px 20px 27%;"><h4>펫 나이: ${petDto.petAge }</h4></li>
 	<li style="list-style:none; margin:0px 0px 20px 27%;"><h4>펫 성별: ${petDto.petGender }</h4></li>
 	<li style="list-style:none; margin:0px 0px 20px 27%;"><h4>petVac1: ${petDto.petVac1 } | petVac2: ${petDto.petVac2 } | petVac3: ${petDto.petVac3 }</h4></li>
 	<li style="list-style:none; margin:0px 0px 20px 27%; border-bottom: 2px solid;"><h4>펫 중성화: ${petDto.petNe }</h4></li>
 </ul>

</c:forEach>
</c:if>
</div>


<h1>예약현황</h1>
 <c:if test="${empty resDto }">
 	예약 정보가 없습니다.
 </c:if>
 
 
 
 
 
  <c:if test="${not empty resDto }"> 

 <table border="1">
 <tr>
 	<td>예약ID</td>
 	<td>예약시간</td>
 	<td>품종</td>
 	<td>예약날짜</td>
 	<td>방문목적</td>

 </tr>
 
 <tr>
 	<td>${resDto.bookId }</td>
 	<td>${resDto.bookHour }</td>
 	<td>${resDto.bookPetType }</td>
 	<td>${resDto.bookDate } </td>
 	<td>${resDto.bookWhy }</td>
 
 </tr>
 </table>





</c:if>
<h1>병원 방문 후기</h1>


<h1>고객센터 문의내용</h1>

<h1>비밀번호 찾기</h1>
<a href="/user/findpwing">비밀번호 찾기</a><br>


<input type="button" value="회원탈퇴" onclick="test()"><br>



	<!-- 전체를 감싸는 태그 -->
	<div id="page-wrapper">
		<!-- 헤더 -->
		<header id="main-header"></header>
		<!-- 내비게이션 -->
		<nav id="main-navigation"></nav>
		<div id="content">
			<!-- 본문 좌측 영역 -->
			<section id="main-section"></section>
			<!-- 본문 우측 영역 -->
			<aside id="main-aside"></aside>
		</div>
		<footer id="main-footer"></footer>
	</div>

 
</body>
</html>



