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
    text-shadow: 0 0 0 rgba(100,100,100,0.4);
}

#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

 
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
 #top{
	width: 100%;
	height: 115px;
}
.inwrap {
    width: 100%;
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
 
.container1 {
    position: relative;
    width: 100%;
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
    width: 100%;
    height: 100%;
    position: relative;
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
.search-top-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 120px;
  background: #FAFAD2;
  opacity: 0.7;
}
#btmbtn{
padding-bottom: 10%;
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
 		var name = document.querySelector('#field1').value;
 		var plus =  document.querySelector('.box');

		$(".insert").remove();

 		console.log(name);
		$.ajax({
			type:"GET",
			url:"/board/aj",
			data: {
				name
			},
			success: function(Dto){
				if(Dto==""){
				console.log("데이터x");
				}else{					
					var list = new Array();
					$(".insert").remove();
					for(var i = 0;i<Dto.length;i++){
						list.push(Dto[i].hospitalname);
						console.log(list[i]);
						 $(".box").append("<div class='insert'><a style='cursor:pointer;' class ='getn' onclick='achk("+i+")' >"+list[i]+"</a></div>");
						}
					}
				},
			error: function(){
				alert("통신실패");
			}
		});
 		
 	};
 	
 	function achk(num){
 		var getname = document.getElementsByClassName("getn");
 		var setname = getname[num].innerHTML;
 		document.getElementById("field1").value=setname
 	}
 	
</script>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
<div id="top"></div> 

<form action="/board/write" class="mb-3" name="myform" id="myform" method="post" enctype="multipart/form-data">
	<div class="inwrap">
	<div class="search-top-container">
		<h1><b>글작성</b></h1>
	</div>
		<div class="container1" >
	<div>
 
	<h3 type="hidden">회원번호 : ${userkey}</h3>
 
	<input type="hidden" name=userKey value="${userKey}">
	</div>
	<div>
		<b>제목 : &nbsp; </b>
		<input style="border: 2px solid rgba(250, 208, 0, 0.99); width: 300px; height: 40px;" type="text" name=comTitle>
		<br>
		<br>
		<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;병원 이름 : </b>
		<input style="border: 2px solid rgba(250, 208, 0, 0.99); width: 250px; height: 40px;" type="text" id=field1 name=field1 onkeyup="input()" value="">
		<div class="box" style="width: 300px; height: 100px; position:relative; top:10px; margin-left: 43.7%; background: rgb(220,235,240); overflow-y: scroll;">
		  
		</div>
	</div>
 	<br>
 	<br>

 	<br>
	
	<fieldset>
		<span class="text-bold"><b>별점을 선택해주세요</b></span>
		<input type="radio" name="rating" value="5" id="rate1"><label for="rate1" style="cursor:pointer;">★</label>
		<input type="radio" name="rating" value="4" id="rate2"><label for="rate2" style="cursor:pointer;">★</label>
		<input type="radio" name="rating" value="3" id="rate3"><label for="rate3" style="cursor:pointer;">★</label>
		<input type="radio" name="rating" value="2" id="rate4"><label for="rate4" style="cursor:pointer;">★</label>
		<input type="radio" name="rating" value="1" id="rate5"><label for="rate5" style="cursor:pointer;">★</label>
	</fieldset> 
	
	<div style="margin-left: 5%;" class="btn btn-warning">
	
		<input type="file"  name="file" multiple="multiple" class="btn btn-warning"/>
	</div><br><br>
	<!--  <input type="file" name="file"> -->
	<div>
		<textarea cols=150 rows=15 name=comContent style="border: 2px solid rgba(250, 208, 0, 0.99); width: 750px; height: 500px;"></textarea>
	</div>
	</div></div>
	<div id="btmbtn">
		<input type="submit"  value="등록하기" class="btn btn-warning">
	</div>


</form>


	
</body>
</html>