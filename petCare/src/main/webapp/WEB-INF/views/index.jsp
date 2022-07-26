<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="/resources/css/index.css" rel="stylesheet"type="text/css">

</head>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
	<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
        <li><img src="/resources/img/slide1.jpg"></li>
        <li><img src="/resources/img/slide2.jpg"></li>
        <li><img src="/resources/img/slide3.jpg"></li>
        <li><img src="/resources/img/slide4.jpg"></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
    </div>
</div>
</body>
</html>