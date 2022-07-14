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
		<td><button onclick = "location.href = '/admin/adminCheckres?hospitalKey=${dto.hospitalKey }'">승인</button></td>
																									<!-- 이 값도 같이 넘겨줄게 컨트롤러에 -->
																									
	</tr>
</c:forEach>	
</table>


</body>
</html>