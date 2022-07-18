<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
<h1>마이페이지</h1>
 아이디 : ${username}<br>

닉네임 : ${usernick }<input type="button" value="수정" onclick="location.href='testNext'"><br>
이메일: ${useremail }<input type="button" value="수정" onclick="location.href='testNext2'"><br>
전화번호: ${userphone }
<br>
<%--
<h1>나의 펫</h1>
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
펫 중성화: ${petN } --%>
 

<h1>예약현황</h1>


<h1>병원 방문 후기</h1>


<h1>고객센터 문의내용</h1>


<h3>회원탈퇴</h3>
</body>
</html>