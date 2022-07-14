<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
<script>
$(function(){
	var data = {
		    "b_no": ["3900901943"] // 사업자번호 "xxxxxxx" 로 조회 시,
		   }; 
		   
		$.ajax({
		  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=3%2FGcCxFykotCNeqdbYmQTwLG%2BRckHFaJ6ImSyvz7ZbaXT54SCG2UKQUHIoV4XsmIl%2F1XY00EhTUYsN3m1Cf98A%3D%3D",  // serviceKey 값을 xxxxxx에 입력
		  type: "POST",
		  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
		  dataType: "JSON",
		  contentType: "application/json",
		  accept: "application/json",
		  success: function(result) {
		      console.log(result);
		  },
		  error: function(result) {
		      console.log(result.responseText); //responseText의 에러메세지 확인
		  }
		});
})


</script>
</head>
<body>

</body>
</html>