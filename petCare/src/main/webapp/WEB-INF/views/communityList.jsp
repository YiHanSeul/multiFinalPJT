<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function chk(){
		var id = "${userid}";
		 	if( id == null || id ==""){
		 		alert("로그인 이후 이용가능합니다.");
		 	}
		 	else{ 
		 		location.href="/board/writeForm";
		 	}
	 
	}
</script>
<style>
img{
	width: 200px;
	height: 200px;
}
</style>
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
					<td><a href = "/board/detail?boardCnt=${Dto.boardCnt }">  ${Dto.comTitle}</a></td>
					<td>${Dto.field1}</td>
					<td>${Dto.userKey}</td>
					<td>${Dto.comDate}</td>
				</tr>
				<img src="/imagePath/${Dto.userKey}${Dto.comTitle}">
			</c:forEach>	 
		</table>
		 
		<button onclick = "chk();">글작성</button>
		
		
</body>
</html>