<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
/* $('#check').click(function(){
	alert("클릭이벤트 발생");
}); */
function hello() {
	alert("하이");
}
</script>
</head>
<body>
<table border="1">
<c:forEach items="${list }" var="dto">
	<tr>
	
 		<td>HospitalKey = ${dto.hospitalKey }</td>
		<td>HospitalName = ${dto.hospitalName }</td>
		<td>HospitalId = ${dto.hosPitalId }</td>
		<td>HospitalPw = ${dto.hospitalPw }</td>
		<td>HospitalEmail = ${dto.hospitalEmail }</td>
		<td>HospitalPhone = ${dto.hospitalPhone }</td>
		<td>HospitalAddr = ${dto.hospitalAddr }</td>
		<td>HospitalChk = ${dto.hospitalChk }</td>
		<td>Grade = ${dto.grade }</td>
		<td><a id="check">승인</a></td>
	</tr>
</c:forEach>	
</table>


</body>
</html>