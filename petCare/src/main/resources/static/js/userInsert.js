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
			}else if(cnt==-1){
				alert("아이디 값이 비어있습니다.")
			}else{
				alert("아이디가 중복됩니다");
			}
			
		},
		error: function(){
			alert("통신실패");
		}
	}); 
}

$(document).keyup(function(){
	
	
 	var pwd1 = $("#userpw").val();
    var pwd2 = $("#userpwConfirm").val();
    

    if ( pwd1 == '' && pwd2 =='' ) { 
        $("#alert-success").css('display', 'none');
        $("#alert-danger").css('display', 'none');
    } else{
        if (pwd1 == pwd2) {
            $("#alert-success").css('display', 'inline-block');
            $("#alert-danger").css('display', 'none');
        } else {
            $("#alert-success").css('display', 'none');
            $("#alert-danger").css('display', 'inline-block');
        }
    
    }

});







$(document).ready(function() {
		$("#join-btn").click(function () {
			var userid = $("#userid").val();
			var userpw = $("#userpw").val();
			var username = $("#username").val();
			var usernick = $("#usernick").val();
			var useremail = $("#useremail").val();
			var userphone = $("#userphone").val();
			 console.log(userid); 
			if(userid == ""){
				alert("아이디가 없습니다");
			}else if(userpw == ""){
				alert("비밀번호가 없습니다");
			}else if(username == ""){
				alert("이름이 없습니다");
			}else if(usernick == ""){
				alert("닉네임이 없습니다");
			}else if(useremail == ""){
				alert("이메일이 없습니다");
			}else if(userphone == ""){
				alert("전화번호가 없습니다");
			}
			
			
			//취소누르면 return
		});
	});



