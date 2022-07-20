<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
var data = {
	    "b_no": [] // 사업자번호 "xxxxxxx" 로 조회 시,
	   }; 
$(document).ready(function(){
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
			      console.log(result.data[0].tax_type);
			      if(result.data[0].tax_type=="국세청에 등록되지 않은 사업자등록번호입니다."){
			    	  $(btn).html('검증실패');
			      }else{
			    	  $(btn).html('검증완료');
			    	  console.log($(btn).parent().next().children("button").show());
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

</script>
</head>
<body>
<table border="1">
		<tr>	
			<th>사업자번호 </th>
			<th>병원명 </th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이메일 </th>
			<th>전화번호</th>
			<th>주소</th>
			<th>진위검증</th>
		</tr>
<c:forEach items="${dto }" var="dto">
		<tr>
 		<td> ${dto.hospitalKey }</td>
		<td> ${dto.hospitalName }</td>
		<td>${dto.hospitalId }</td>
		<td>${dto.hospitalPw }</td>
		<td> ${dto.hospitalEmail }</td>
		<td> ${dto.hospitalPhone }</td>
		<td> ${dto.hospitalAddr }</td>
		<td><button class="btn" value="${dto.hospitalKey}">검증하기</button></td>
		<td class="td_agree"><button  style="display:none" id="${dto.hospitalKey}" onclick = "location.href = '/admin/adminCheckres?hospitalKey=${dto.hospitalKey }'">승인</button></td>
		</tr>
	

</c:forEach>	
</table>



</body>
</html>