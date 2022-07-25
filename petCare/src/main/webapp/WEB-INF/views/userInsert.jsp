<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
function check(){
	var userid = $("#userid").val();
	console.log(userid);
   	$.ajax({
		url: '/user/idCheck',
		type: 'GET',
		data: {userid:userid},
		success: function(cnt){
			if(cnt ==0){
				alert("아이디 사용가능합니다.");
			}else{
				alert("아이디가 중복됩니다");
			}
			
		},
		error: function(){
			alert("통신실패");
		}
	}); 
}
</script>
<style>
#login-img{
	position: absolute;
	top:0;
	left: 0;
	width: 100%;
	height: 100%;
	filter: brightness(60%);
}
#join-form {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 5% 3% 5% 3%;
	border: 3px solid #f0ce5d;
	border-radius: 5px;
}
#join{
	color: white;
	font-size: large;
	display: flex;
	justify-content: center;
}
#test{
	z-index: 1;
	position: absolute;
}
#logo{
	width: 5%;
	margin-top: 3%;
	margin-left: 10%;
}
.form-inline{
	position: relative;
}
#duplicate{
	position: absolute;
	top : 0px;
	right: 0px;
}
.join{
	margin-bottom: 20px;
}

</style>
</head>
<body>

<img id="login-img" src="/resources/img/login.jpg">
<div id="test"><a href="/user/index"><img id="logo" src="/resources/img/logo.png"></a></div>
<div id="join-form">
<p id="join">Join</p>
<form class="form-inline" action="/user/insertUser" method="get">
	<div class="join">
		<div>ID</div>
		<input class="form-control" type="text" name="userid" id="userid" placeholder="아이디를 입력하세요">
	</div>
	<div class="join">
		<button class="btn btn-warning" id="duplicate" type="button" onclick="check()">중복</button>
	</div>
	<div class="join">
		<input class="form-control" type="password" name=userpw placeholder="비밀번호를 입력하세요">
	</div>
	<div class="join">
		<input class="form-control" type="text" name=username placeholder="이름을 입력하세요">
	</div>
	<div class="join">
		<input class="form-control"  type="text" name=usernick placeholder="닉네임을 입력하세요">
	</div>
	<div class="join">
		<input class="form-control" type="email" name=useremail placeholder="이메일을 입력하세요">
	</div>
	<div class="join">
		<input class="form-control" type="text" name=userphone placeholder="전화번호를 입력하세요">
	</div>
	<div>
	<input class="btn btn-warning" type="submit" value="가입">
	</div>
</form>
</div>
</body>
</html>