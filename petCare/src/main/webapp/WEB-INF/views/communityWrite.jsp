<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
 
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
 #top{
	width: 100%;
	height: 100px;
}
</style>
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
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
<div id="top"></div> 
<form action="/board/write" class="mb-3" name="myform" id="myform" method="post" enctype="multipart/form-data">
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
	<fieldset>
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="radio" name="rating" value="5" id="rate1"><label for="rate1">★</label>
		<input type="radio" name="rating" value="4" id="rate2"><label for="rate2">★</label>
		<input type="radio" name="rating" value="3" id="rate3"><label for="rate3">★</label>
		<input type="radio" name="rating" value="2" id="rate4"><label for="rate4">★</label>
		<input type="radio" name="rating" value="1" id="rate5"><label for="rate5">★</label>
	</fieldset> 
	<!--  <input type="file" name="file"> -->
	<div>
		<textarea cols=150 rows=15 name=comContent></textarea>
	</div>
	
	<div>
		<input type="submit"  value="등록하기">
	</div>


</form>


	
</body>
</html>