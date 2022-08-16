<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/resources/css/login.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 
</head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

 	var number = ${number};
	console.log(number);
	if(number == 5){
		   alert("로그인 해야합니다!");
		
		
		$.ajax({
			type:"get",
			url:"/board/cleanNum"
		});
	}
	
 	var numvac = ${numvac};
	console.log(numvac);
	if(numvac == 5){
		alert("로그인 해야합니다!");
		
		$.ajax({
			type:"get",
			url:"/vacc/numvacClean"
		});
	}

</script>


<body>
	<img id="login-img" src="/resources/img/login.jpg">
	<div id="test">
		<a href="/"><img id="logo" src="/resources/img/logo.png"></a>
	</div>
	<div id="login-form">
		<p id="login">Login</p>
		<form class="form-inline" name="admin" action="/user/loginForm" method="post">
			<div class="login">
				<input class="form-control" type="text" name="userid" id="userid" placeholder="user Id">
			</div>
			<div class="login">
				<input class="form-control" type="password" name="userpw" id="userpw" placeholder="user Pw">
			</div>
			<div id="test"></div>
			<div id="radio-div">
				<input type="radio" name="chk_info" value="1" checked>
					<label class="radio-btn">일반 로그인</label> 
				<input id="hos" type="radio" name="chk_info" value="2">
					<label class="radio-btn">병원 로그인</label>
			</div>
			<div>
				<input id="submit-btn" class="btn btn-warning" type="submit" value="로그인">
			</div>
		</form>
		
		<button id="kakao-login" class="btn btn-warning" onclick="location.href='#'">카카오로그인</button>
		<div id="join">
			<button id="user-join" class="btn" onclick="location.href='/user/user'">회원가입</button>
			<button class="btn" onclick="location.href='/hos/insertHosForm'">병원회원가입</button>
		</div>
	</div>
<script type="text/javascript">
/* js파일에 넣으면 안 돌아갑니다 ㅠㅠㅠ */

var numb = ${no};


console.log(numb);
if(numb == 4){

	alert("아이디를 다시 확인해주세요!");
	$.ajax({
		type:"get",
		url:"/user/cleanNumb"
	});
}else if(numb == 5){
	alert("비밀번호를 다시 확인해주세요!");
	$.ajax({
		type:"get",
		url:"/user/cleanNumb"
	});
}else if(numb == 3){
	 alert("일치하는 회원이 없습니다!"); 
	$.ajax({
		type:"get",
		url:"/user/cleanNumb"
	});
}else{
	
}
</script>
</body>
</html>