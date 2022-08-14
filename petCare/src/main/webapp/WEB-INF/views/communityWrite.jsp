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
    font-size: 3em;
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
	height: 120px;
}
.inwrap {
    width: 120rem;
    height: 100%;
    position: relative;
    margin: auto;
}

.at {
   display: block;
    height: 100%;
    line-height: 1.4;
    padding: 4.3rem 3.2rem 3.8rem 3rem;
}
 
 
.container {
    position: relative;
    min-height: calc(100% - 25rem);
    border-top: 1px solid #cdcdcd;
}
 
html, body {
    height: 100%;
    margin: 0;
    padding: 0;
    font-size: 1.4rem;
    background-color: #fff;
}
.inwrap {
    width: 120rem;
    height: 100%;
    position: relative;
    margin: auto;
}
.seq{
    line-height: 2.4rem;
    margin-bottom: 2.5rem;
    display: inline-block;
    vertical-align: middle;
    position: relative;
    font-weight: 500;
    font-size: 1.4rem;
    color: #fd7e14;
}
.tit{
	display: block;
    margin-bottom: 1rem;
    font-weight: 500;
    font-size: 1.6rem;
    color: #000;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
    line-height: 1.4;
    text-align: left;
    word-wrap: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
div{
text-align: center;
}
 
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
 	let ck = ${no};
 	if( ck==1){
		alert(" 병원이름이 일치하지 않습니다. "); 		
 	}else if(ck==2){
 		alert(" 잘못된 정보를 입력하였습니다. "); 
 	}else if(ck==3){
 		alert(" 사진 형태가 png, jpg 형태가 아닙니다. "); 
 	}
 	function input(){
 		var val = document.querySelector('#field1').value;

		$.ajax({
			type:"GET",
			url:"",
			data: ,
			success: function(rouletteDto){ 
				$('#view').val(rouletteDto.money);
			},
			error: function(){
				alert("통신실패");
			}
		});
 		
 	};
</script>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
<div id="top"></div> 

<form action="/board/write" class="mb-3" name="myform" id="myform" method="post" enctype="multipart/form-data">
	<div class="inwrap">
	<h1><b>글작성</b></h1>
		<div class="container">
	<div>
	화원번호 : ${userkey}
	<input type="hidden" name=userKey value="${userKey}">
	</div>
		<spen><b>제목 : </b></spen>
		<input type="text" name=comTitle>
 	<br>
 	<br>
	 	<spen><b>병원 이름 : </b></spen>
		<input type="text" id=field1 name=field1 onkeyup="input()" >
		<div class="box"  style="width: 200px; height: 100px; background: #F78181; overflow-y: scroll;">
		     
		</div>
 	<br>
	
	<fieldset>
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="radio" name="rating" value="5" id="rate1"><label for="rate1">★</label>
		<input type="radio" name="rating" value="4" id="rate2"><label for="rate2">★</label>
		<input type="radio" name="rating" value="3" id="rate3"><label for="rate3">★</label>
		<input type="radio" name="rating" value="2" id="rate4"><label for="rate4">★</label>
		<input type="radio" name="rating" value="1" id="rate5"><label for="rate5">★</label>
	</fieldset> 
	
	<div style="margin-left: 5%;" class="btn btn-warning">
	
		<input type="file"  name="file" multiple="multiple" class="btn btn-warning"/>
	</div><br><br>
	<!--  <input type="file" name="file"> -->
	<div>
		<textarea cols=150 rows=15 name=comContent></textarea>
	</div>
	</div></div>
	<div>
		<input type="submit"  value="등록하기" class="btn btn-warning">
	</div>


</form>


	
</body>
</html>