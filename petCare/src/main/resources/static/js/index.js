 	let userId='${UserId}';
	console.log(userId);
	$(function(){
		if(userId=="${UserId}"){
			$("#loginChk").show();
			$("#loginChk2").hide();
		}else{
			$("#loginChk").hide();
			$("#loginChk2").show();
		}
	})
 