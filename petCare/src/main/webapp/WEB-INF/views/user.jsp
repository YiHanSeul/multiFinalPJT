<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
</head>
<body>
<form action="/user/insertUser" method="get">

	
	<div>
		아이디
		<input type="text" name="userid" id="userid"><button id="duplicate" type="button" onclick="check()">중복체크</button>
	</div>
	<div>
		비밀번호
		<input type="text" name=userpw>
	</div>
	<div>
		이름
		<input type="text" name=username>
	</div>
	<div>
		닉네임
		<input type="text" name=usernick>
	</div>
	<div>
		이메일
		<input type="text" name=useremail>
	</div>
	<div>
		전화번호
		<input type="text" name=userphone>
	</div>
	
	<input type="submit" value="가입">

</form>
</body>
</html>