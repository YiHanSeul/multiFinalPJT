<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
 #top{
	width: 100%;
	height: 100px;
}
</style>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
<div id="top"></div> 
	detail
	<table>
		<tr>
			<th>제목</th>
			<th>${detail.comTitle }</th>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${detail.userKey }</td>
		</tr>
		<tr>
			<td colspan=2>${detail.comDate }</td>
		</tr>
		<tr>
			<td colspan=2><textarea cols=40 rows=15>${detail.comContent }</textarea></td>
		</tr>
	</table>
	
</body>
</html>