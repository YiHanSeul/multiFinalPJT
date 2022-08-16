<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
 #top{
	width: 100%;
	height: 115px;
}
 
li{
	display: inline-block !important;
	align-self: center !important; 
}
ul {
	margin-left: 45% !important;
}
img{
	width: 275px;
	height: 200px;
}
 
 
.at {
   display: block;
    height: 100%;
    line-height: 1.4;
    padding: 4.3rem 3.2rem 3.8rem 3rem;
}
 
 
.container {
    position: relative;
    min-height: calc(100% - 25rem);
    border-top: 1px solid #cdcdcd;
}
 
html, body {
    height: 100%;
    margin: 0;
    padding: 0;
    font-size: 1.4rem;
    background-color: #fff;
}
.inwrap {
    width: 120rem;
    height: 100%;
    position: relative;
    margin: auto;
}
.seq{
    line-height: 2.4rem;
    margin-bottom: 2.5rem;
    display: inline-block;
    vertical-align: middle;
    position: relative;
    font-weight: 500;
    font-size: 1.4rem;
    color: #fd7e14;
}
.tit{
	display: block;
    margin-bottom: 1rem;
    font-weight: 500;
    font-size: 1.6rem;
    color: #000;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
    line-height: 1.4;
    text-align: left;
    word-wrap: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
 label{
    font-size: 3em;
    color: transparent;
   text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
 
.one{
    font-size: 3em;
    color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}
div{
text-align: center;
}
.search-top-container {
 display: flex;
 flex-direction: column;
 align-items: center;
 justify-content: center;
 height: 120px;
 background: #FAFAD2;
 opacity: 0.7;
}
</style>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
<div id="top"></div> 
	<div class="search-top-container">
 		<h1 class="title" id="stt"><b>상세내용</b></h1>
 	</div>
	<div class="inwrap">
		<div class="container">
		<span> 평점 : </span>
			<c:forEach begin="1" end="${detail.rating}">
			<span ><label >★</label></span>
			</c:forEach>
			<c:forEach begin="${detail.rating}" end="4">
			<span ><label class="one">★</label></span>
			</c:forEach>
		<div>
			<h2>제목 : ${detail.comTitle }</h2>
		</div>
		 <div>
			<h3>작성자(키) : ${detail.userKey }</h3>
		</div>
		 <div>
			<span  >${detail.comDate }</span>
		</div>
	<img style="border: 2px solid rgba(250, 208, 0, 0.99); width: 750px; height: 500px;" src="/imagePath/${detail.userKey}${detail.comTitle}">
		<br><br> 
		 <div>
			 <textarea  cols=109 rows=15 readonly="readonly" style="border: 2px solid rgba(250, 208, 0, 0.99);">${detail.comContent }</textarea> 
		</div>
	</div>
	
	</div>
</body>
</html>