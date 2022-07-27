<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
 	let ck = ${no};
 	if( ck==1){
		alert(" 병원이름이 일치하지 않습니다. "); 		
 	}else if(ck==2){
 		alert(" 잘못된 정보를 입력하였습니다. "); 
 	}else if(ck==3){
 		alert(" 사진 형태가 png, jpg 형태가 아닙니다. "); 
 	}
</script>
<form action="/board/write" method="post" enctype="multipart/form-data">
	<div>
	화원번호 : ${userkey}
	<input type="hidden" name=userKey value="${userKey}">
	</div>
	 
 	<div>
		<label>제목</label>
		<input type="text" name=comTitle>
	</div>
 	<div>
		<label>병원 이름</label>
		<input type="text" name=field1>
	</div>
	<div>
		<label>파일 첨부</label>	
		<input type="file"  name="file" multiple="multiple"/>
	</div>
	 
	<!--  <input type="file" name="file"> -->
	<div>
		<textarea cols=15 rows=15 name=comContent></textarea>
	</div>
	<div>
		<input type="submit"  value="등록하기">
	</div>


</form>


	
</body>
</html>