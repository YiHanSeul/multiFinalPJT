<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function chk(){
		var id = "${userid}";
		 	if( id == null || id ==""){
		 		alert("로그인 이후 이용가능합니다.");
		 	}
		 	else{ 
		 		location.href="/board/writeForm";
		 	}
	 
	}
	function del(boardCnt, Key){
		if(Key==${userKey}){
		location.href="/board/del?boardCnt="+boardCnt;			
		}
		else{
			alert("본인 게시물이 아닙니다. 삭제할 수 없습니다.");
		}
	}
	
	var BoardCnt = new Array(); 
    
	 <c:forEach var="Dto" items="${BoardList}">
	 BoardCnt.push("${Dto.getBoardCnt()}"); 
     </c:forEach>


 	let pageSize = Math.ceil(BoardCnt.length/9); 	//﻿ 화면에 표시할 페이지 번호 수
 	let totCnt = BoardCnt.length;	// ﻿전체 데이터 목록 수
 	let listCnt = 9;	// ﻿페이지당 표시할 데이터 목록 수
 	let pageNo = ${num};		// ﻿현재 페이지 번호
 	
     function list(i){
		location.href="/board/list1?num="+i;
 	}
     
	/* 페이징 함수 */
	function paging(pageSize, totCnt, listCnt, pageNo) {
		//화면에 표시할 페이지 번호 수, 총 데이터 수, 페이지당 표시할 데이터 수, 현재 페이지 번호

		let pageCnt = Math.ceil(totCnt / listCnt);	//총 페이지 번호 개수
		let start = Math.floor((pageNo - 1) / pageSize) * pageSize + 1;	//시작 페이지 번호
		let end = (start + pageSize < pageCnt ? start + pageSize : pageCnt + 1); //끝 페이지 번호

		let html = '';
		if(start > 1) {		//시작점 페이지가 아닌 경우 왼쪽 이동 버튼 활성화
			html += '<li class="page-item"><button type="button" onclick="list(1)" class="page-link"><<</button></li>';
			html += '<li class="page-item"><button type="button" onclick="list('+ (start - pageSize) +')" class="page-link"><</button></li>';
		} else {	//disabled 처리
			html += '<li class="page-item disabled"><button type="button" class="page-link" tabindex="-1" aria-disabled="true"><</button></li>';
		}

		for(let i = start; i < end; i++) {
			html += '<li class="page-item ' + (i == pageNo ? 'active' : '') + '" aria-current="page"><button type="button" onclick="list('+ i +')" class="page-link">'+ i +'</button></li>';
		}

		if(end < pageCnt + 1) {	//마지막점 페이지가 아닌 경우 오른쪽 이동 버튼 활성화
			html += '<li class="page-item"><button type="button" onclick="list('+ (start + pageSize) +')" class="page-link">></button></li>';
			html += '<li class="page-item"><button type="button" onclick="list('+ pageCnt +')" class="page-link">>></button></li>';
		} else {	//disabled 처리
			html += '<li class="page-item disabled"><button type="button" class="page-link" tabindex="-1" aria-disabled="true">></button></li>';
		}

		document.getElementById('paging').innerHTML = html;
	} 
</script>
<style>
label{
    font-size: 2em;
    color: transparent;
   text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
 
.one{
    font-size: 2em;
    color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}
 
li{
	display: inline-block !important;
	align-self: center !important; 
}
ul {
	margin-left: 45% !important;
}
img{
	width: 275px;
	height: 200px;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
tbody {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
    margin-left: 0;
}
tbody tr{
    width: 35rem;
    min-height: 30rem;
    display: block;
    border: 0.1rem solid #dedede;
    border-radius: 0.3rem;
    margin-left: 1.5rem;
    margin-top:  1.5rem;
}
.at {
   display: block;
    height: 100%;
    line-height: 1.4;
    padding: 4.3rem 3.2rem 3.8rem 3rem;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    text-indent: initial;
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
td{
    min-height: 30rem;
    padding: 0;
    display: block;
    border-bottom: 0;
}
#top{
	width: 100%;
	height: 100px;
}
#com{
	text-align: center;
}
#stt{
	font-size: 30pt !important;
    font-weight: bolder !important;
    opacity: 1 !important;
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
.footer {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
   background: #FAFAD2;
}
.footer-top {
    padding: 43px 0 35px;
}
.container {
    margin: auto;
    max-width: 1200px;
    padding: 0;
}
.footer .container {
    display: flex;
    justify-content: space-between;
    position: relative;
    text-align: center;
}
@media (min-width: 1264px)
.container {
    max-width: 1185px;
}
.footer-col:first-child {
    max-width: 524px;
    margin-right: 15%;
}
.footer-info {
    margin: 0 -8px;
}
.footer-link {
    margin: 0 -8px;
}
.footer-link li {
    float: left;
    padding: 0 2px;
}
*, :after, :before {
    box-sizing: inherit!important;
}
.footer-link:after {
    content: "";
    display: block;
    clear: both;
}
</style>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp" %>
		<div id="top"></div> 
		<div id="com">
			<div class="search-top-container">
 				<h3 class="title" id="stt">커뮤니티</h3>
 			</div>
			<button onclick = "chk();" class="btn btn-warning">글작성</button>
		</div>
		<div class="inwrap">
		<div class="container">
		<table class="tbl t3 tbl-newsclip" id="tbl-newsclip"> 
		<tbody>
			<c:forEach items="${BoardList }" var="Dto" begin="${begin}" end="${end}">
				<tr>
					<td>
						<a class="at" href="/board/detail?boardCnt=${Dto.boardCnt}">
							<span class="seq"> 
						게시물  --- ${Dto.boardCnt}
							</span>
							<div class="tit">
								<b>작성자(번호) : ${Dto.userKey}</b><br>
								<b>병원 : ${Dto.field1}</b><br>
							</div>
							<div class="desc">
								<h3>제목 : ${Dto.comTitle}</h3><br>
							</div>
							<img src="/imagePath/${Dto.userKey}${Dto.comTitle}">
							<div class="date">${Dto.comDate}</div>
						</a>
							
						<span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;평점 : </span>
						<c:forEach begin="1" end="${Dto.rating}">
						<span ><label >★</label></span>
						</c:forEach>
						<c:forEach begin="${Dto.rating}" end="4">
						<span ><label class="one">★</label></span>
						</c:forEach>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button onclick = "del(${Dto.boardCnt},${Dto.userKey});" class="btn btn-warning">삭제</button>
					</td>
				</tr>
			</c:forEach>	 
		</tbody>
		</table>
			<nav aria-label="Pagination">
				<hr class="my-0" />
				<ul class="pagination justify-content-center my-4" id="paging"></ul>
			</nav>	
		</div>
		</div>
		<footer class="footer">
   <div class="footer-top">
      <div class="container">
         <div class="footer-col">
            <ul class="footer-info">
               <li>MUNGMUNG NETWORKS</li>
               <li>대표이사 한세현종</li>
               <li>사업자등록번호 844-455-9887415</li>
               <li> 서울 송파구 올림픽로 240 잠실동 40-1 </li>
               <li>TEL. 1661-2000</li>
               <li>MUNGMUNGnetworks@gmail.com</li>
               <li>Copyright © MUNGMUNG NETWORKS. All Rights reserved.</li>
            </ul>
         </div>
      </div>
   </div>
</footer>
		 <script type="text/javascript">
			paging(pageSize, totCnt, listCnt, pageNo);
		 </script>
</body>
</html>