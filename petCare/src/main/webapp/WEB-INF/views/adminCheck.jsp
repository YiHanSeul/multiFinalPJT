<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/adminCheck.js"></script>
<link href="/resources/css/adminCheck.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<p>병원 가입신청 리스트</p>
	<table id="adminChk" class="table table-bordered" border="1">
		<tr>
			<th>사업자번호</th>
			<th>병원명</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>진위검증</th>
		</tr>
		<c:forEach items="${dto }" var="dto">
			<tr>
				<td>${dto.hospitalKey }</td>
				<td>${dto.hospitalName }</td>
				<td>${dto.hospitalId }</td>
				<td>${dto.hospitalEmail }</td>
				<td>${dto.hospitalPhone }</td>
				<td>${dto.hospitalAddr }</td>
				<td style="width: 12%;"><button class="btn"
						value="${dto.hospitalKey}">검증하기</button>
					<button style="display: none;" class="btn" id="${dto.hospitalKey}"
						onclick="location.href = '/admin/adminCheckres?hospitalKey=${dto.hospitalKey }'">승인</button>
				</td>

			</tr>
		</c:forEach>
	</table>
</body>
</html>