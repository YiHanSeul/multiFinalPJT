<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<meta charset="UTF-8">
<title>회원 탈퇴 구현</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
    function check(){
    	var userpw = $("#userpw").val();
    	console.log(userpw);
        	$.ajax({
    		url: '/user/delete',
    		type: 'GET',
    		data: {userpw: userpw},
    		success: function(data){
    			console.log(data);
			if(data==1){
				/* swal("탈퇴완료", "탈퇴가 정상적으로 완료되었습니다","success"); */
				swal({
					title : "탈퇴 완료",
					icon : "success",
					closeOnClickOutside : false
				}).then(function(){
					location.href = "index";
				});
			}else{
				swal("오류","비밀번호를 다시 입력해주세요.","error");
				}       		
    		},
    		error: function(error){
    			console.log(error)
    			alert("통신실패");
    		}
    	}); 
    }
</script>
</head>
<body>

비밀번호를 입력해주세요. <input type="text" name="userpw" id="userpw">
<input type="button" value="회원탈퇴" onclick="check()">


</body>
</html>