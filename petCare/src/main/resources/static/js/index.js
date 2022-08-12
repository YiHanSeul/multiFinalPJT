/**
 * 
 */
 	var number = ${number};
	console.log(number);
	if(number == 5){
		alert("로그인 해야함");
		$.ajax({
			type:"get",
			url:"/board/cleanNum"
		});
	}
 