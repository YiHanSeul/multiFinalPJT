/**
 * 
 */
 
 /* 		html을 순서대로 읽음 */
	numb  = ${num};	
	
	
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

let y = document.getElementById("submit-btn").onclick = function(){isTest();};
		
	