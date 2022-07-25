var data = {
	    "b_no": [] // 사업자번호 "xxxxxxx" 로 조회 시,
	   }; 
$(document).ready(function(){
	let test = "${dto }";
	console.log(test);
	 $(".btn").click(function(){
		data.b_no.push($(this).attr('value'));
		//console.log(data)
		//console.log(data.b_no);
		let btn=$(this);
		console.log(btn);
		$.ajax({
			  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=3%2FGcCxFykotCNeqdbYmQTwLG%2BRckHFaJ6ImSyvz7ZbaXT54SCG2UKQUHIoV4XsmIl%2F1XY00EhTUYsN3m1Cf98A%3D%3D",  // serviceKey 값을 xxxxxx에 입력
			  type: "POST",
			  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
			  dataType: "JSON",
			  contentType: "application/json",
			  accept: "application/json",
			  success: function(result) {
			      //console.log(result);
			     // console.log(result.data[0].tax_type);
			      if(result.data[0].tax_type=="국세청에 등록되지 않은 사업자등록번호입니다."){
			    	  $(btn).html('검증실패');
			    	  $(btn).addClass('btn-danger');
			      }else{
			    	  $(btn).html('검증완료');
			    	  $(btn).addClass('btn-primary');
			    	  //console.log($(btn).parent().next().children("button").show());
			    	  console.log($(btn).next().show());
			    	  $(btn).find("button").show()
			    	  
			      }
			  },
			  error: function(result) {
			      console.log(result.responseText); //responseText의 에러메세지 확인
			  }
			});
		data.b_no.pop();
	 });
	
});
