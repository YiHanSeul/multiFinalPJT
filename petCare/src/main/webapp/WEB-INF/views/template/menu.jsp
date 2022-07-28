<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="/resources/css/menu.css" rel="stylesheet" type="text/css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <script type="text/javascript">
 	userId="${userid}";
 	console.log(userId);
 	$(function(){
 		if(userId==null || userId==""){
 			$("#login").show();
 			$("#myPage").hide();
 			$("#logout").hide();
 		}else{
 			$("#myPage").show();
 			$("#logout").show();
 			$("#login").hide();
 		}
 		$("#logout").click(function(){
 			userId="";
 	 	})
 	})
 
 </script>
</head>
<body>
	<div id="menus1">
		<div class="menu" id="myPage" style="display:none;"><a href="/user/userMypage">마이페이지</a></div>
		<div class="menu" id="login" style="display:none;"><a href="/user/login">로그인</a></div>
		<div class="menu" id="logout" style="display:none;"><a href="/user/logout">로그아웃</a></div>
		<div class="menu" id="join" style="display:none;"><a href="/user/join">회원가입</a></div>
	</div>
	<div id="tmp"></div>
	<div id="menus2">
		<div class="menu"><a href="/map/hosMap">병원찾기</a></div>
		<div class="menu"><a href="/hos/vacc">예방접종</a></div>
		<div class="menu" id="logImg"><a href="/user/index"><img id="logo" src="/resources/img/logo.png"></a></div>
		<div class="menu"><a href="/pet/petInsuInfo">보험</a></div>
		<div class="menu"><a href="/board/list">커뮤니티</a></div>
	</div>
</body>
</html>