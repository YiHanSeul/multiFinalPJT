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
<c:if test="${not empty username }">
<table border="1">
	<tr>
		<td>아이디 : ${username}</td>
	</tr>
	<tr>
	<td>닉네임 : ${usernick }<input type="button" value="수정" onclick="location.href='testNext'"></td>
	</tr>
	<tr>
		<td>이메일: ${useremail }<input type="button" value="수정" onclick="location.href='testNext2'"></td>
	</tr>
	<tr>
		<td>전화번호: ${userphone }<input type="button" value="수정" onclick="location.href='testNext3'"></td>
	</tr>
	
</table>
</c:if>





 <h1>나의 펫</h1>
 <c:if test="${empty petName }">
 	펫 정보가 없습니다.
 </c:if>
 <c:if test="${not empty petName}">
펫 이름: ${petName }<br>
펫 나이: ${petAge }<br>
펫 성별: ${petGender }<br>
펫 예방접종: 
 <%
   String[] petVac = request.getParameterValues("petVac");
   for(int i=0; i<petVac.length; i++){
      out.println(petVac[i]);
   }
%><br> 
펫 중성화: ${petN }
</c:if>

<h1>예약현황</h1>


<h1>병원 방문 후기</h1>


<h1>고객센터 문의내용</h1>


<input type="button" value="회원탈퇴" onclick="test()"><br>
</body>
</html>