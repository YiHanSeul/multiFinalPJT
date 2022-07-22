<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<table border="1">
	<tr>
		<td width="200">아이디 : ${dto.username}</td>
	</tr>
	<tr>
	<td>닉네임 : ${dto.usernick }&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="수정" onclick="location.href='userChnick'"></td>
	</tr>
	<tr>
		<td>이메일: ${dto.useremail }&nbsp;&nbsp;<input type="button" value="수정" onclick="location.href='userChemail'"></td>
	</tr>
	<tr>
		<td>전화번호: ${dto.userphone }&nbsp;&nbsp;<input type="button" value="수정" onclick="location.href='userChphone'"></td>
	</tr>
	
</table>
</c:if>





 <h1>나의 펫</h1>
 

 
 
 <c:if test="${empty petDto }">
 	펫 정보가 없습니다.
 </c:if>
 <c:if test="${not empty petDto}">
펫 이름: ${petDto.petName }<br>
펫 나이: ${petDto.petAge }<br>
펫 성별: ${petDto.petGender }<br>
펫 예방접종: 
 <%
   String[] petVac = request.getParameterValues("petVac");
   for(int i=0; i<petVac.length; i++){
      out.println(petVac[i]);
   }
%><br> 
펫 중성화: ${petDto.petNe }
</c:if>

<h1>예약현황</h1>


<h1>병원 방문 후기</h1>


<h1>고객센터 문의내용</h1>


<input type="button" value="회원탈퇴" onclick="test()"><br>
</body>
</html>