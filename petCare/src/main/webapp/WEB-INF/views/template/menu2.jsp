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
  	/*console.log(userId); */
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
		<div class="menu" id="myPage" style="display:none;"><a href="/user/userMypage">예약내역조회</a></div>
		<div class="menu" id="login" style="display:none;"><a href="/user/login">로그인</a></div>
		<div class="menu" id="logout" style="display:none;"><a href="/user/logout">로그아웃</a></div>
		<div class="menu" id="join" style="display:none;"><a href="/user/join">회원가입</a></div>
	</div>
	<div id="menus2">
		<div class="menu"><a href="/map/hosMap">병원찾기</a></div>
		<div class="menu"><a href="/vacc/vaccform">예방접종</a></div>
		<div class="menu" id="logImg"><a href="/"><img id="logo" src="/resources/img/logo.png"></a></div>
		<div class="menu"><a href="/pet/petInsuInfo">보험</a></div>
		<div class="menu"><a href="/board/list">커뮤니티</a></div>
	</div>
	<a id="chat" class="btn btn-warning btn-lg" href="https://console.dialogflow.com/api-client/demo/embedded/6871e634-2c0d-492f-bfc7-e0a67b30d495" onClick="window.open(this.href, '', 'width=400, height=430'); return false;">챗봇</a>
</body>
</html>