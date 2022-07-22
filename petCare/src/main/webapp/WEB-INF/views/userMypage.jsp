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
div {
	inline-block;
}
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

<h1>마이페이지</h1>
<c:if test="${not empty dto }">
<table class="table table-striped">
	<tr>
		<td ><h5>아이디: ${dto.username}</h5></td>
	</tr>
	<tr>
	<td><h5>닉네임 : ${dto.usernick }&nbsp;&nbsp;&nbsp;&nbsp;<input id="usernick" class="btn btn-primary" type="button" value="수정" onclick="location.href='userChnick'"></h5></td>
	</tr>
	<tr>
		<td><h5>이메일: ${dto.useremail }&nbsp;&nbsp;<input id="useremail" class="btn btn-primary" type="button" value="수정" onclick="location.href='userChemail'"></h5></td>
	</tr>
	<tr>
		<td><h5>전화번호: ${dto.userphone }&nbsp;&nbsp;<input id="userphone" class="btn btn-primary" type="button" value="수정" onclick="location.href='userChphone'"></h5></td>
	</tr>
	
</table>
</c:if>

<h1>비밀번호 찾기</h1>
<a href="/user/findpwing">비밀번호 찾기</a>



 <h1>나의 펫</h1>
 

 
 
 <c:if test="${empty petDto }">
 	펫 정보가 없습니다.
 </c:if>
 <c:if test="${not empty petDto}">
 <c:forEach var="petDto" items="${petDto }">
 <table border="1">
 <tr>
 	<td>펫 이름</td>
 	<td>펫 나이</td>
 	<td>펫 성별</td>
 	<td>petVac1</td>
 	<td>petVac2</td>
 	<td>petVac3</td>
 	<td>펫 중성화</td>
 </tr>
 
 <tr>
 	<td>${petDto.petName }</td>
 	<td>${petDto.petAge }</td>
 	<td>${petDto.petGender }</td>
 	<td>${petDto.petVac1 }</td>
 	<td>${petDto.petVac2 }</td>
 	<td>${petDto.petVac3 }</td>
 	<td>${petDto.petNe }</td>
 </tr>
 </table>

</c:forEach>
</c:if>

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


<input type="button" value="회원탈퇴" onclick="test()"><br>
</body>
</html>