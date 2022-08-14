<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
function check(){
	var userid = $("#userid").val();
	var useremail = $("#useremail").val()	
   	$.ajax({
		url: '/user/findpw',
		type: 'GET',
		data: {userid : userid,
					useremail : useremail			
		},
		success: function(result){
			
				alert(result);
			
		},
		error: function(){
			alert("통신실패");
		}
	}); 
}
</script>
</head>
<body>

	<p>
		아이디
		<input type="text" id="userid" name="userid" placeholder="회원가입한 아이디를 입력하세요" style="width:60%;">
	</p>
	<p>
		이메일
		<input type="text" id="useremail" name="useremail" placeholder="회원가입한 이메일을 입력하세요" style="width:60%;">
	</p>
	<p>
		<button type="button" class="btn btn-warning btn-sm" onclick="check()">찾기</button>
		
	</p>
	<a href="javascript:history.back()" class="btn btn-primary btn-sm">Back</a>
</body>
</html>