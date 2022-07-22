<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
		<h1>Community List</h1>
		<table>
			<tr>
				<th>NO.</th>
				<th>제목</th>
				<th>병원명</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
			<c:forEach items="${BoardList }" var="Dto">
				<tr>
					<td>${Dto.boardCnt}</td>
					<td>${Dto.comTitle}</td>
					<td>${Dto.field}</td>
					<td>${Dto.userKey}</td>
					<td>${Dto.comDate}</td>
				</tr>
			</c:forEach>	
		</table>
		
		<button>글작성</button>
		
		
</body>
</html>