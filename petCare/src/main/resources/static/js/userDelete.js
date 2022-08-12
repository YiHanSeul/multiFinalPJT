/**
 * 
 */
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
				swal({
					title : "탈퇴 완료",
					icon : "success",
					closeOnClickOutside : false
				}).then(function(){
					window.close();
				}); 
				//어디로 이동을 시켜주긴해야함
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