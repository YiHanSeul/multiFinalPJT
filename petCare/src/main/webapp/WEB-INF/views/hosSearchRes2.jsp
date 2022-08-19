<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
var listss = new Array(); 

listss = ${lsize};

let pageSize = Math.ceil(${lsize}/9); 	//﻿ 화면에 표시할 페이지 번호 수
let totCnt = ${lsize};	// ﻿전체 데이터 목록 수
let listCnt = 9;	// ﻿페이지당 표시할 데이터 목록 수
let pageNo = ${num};		// ﻿현재 페이지 번호

function list(i){
	location.href="/map/list?num="+i;
	}

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
.footer {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
    background: #FAFAD2;
    margin-top: 10%;
}
.footer-top {
    padding: 43px 0 75px;
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
}
@media (min-width: 1264px)
.container {
    max-width: 1185px;
}
.footer-col:first-child {
    max-width: 524px;
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
.btn-warning{
	text-align: right !important;
	padding-left: 4px !important;
}

#area {
   border: 1px solid black;
   background-color: pink;
   top: 30%; 
   left: 40%;
   right:40%;
   display: none;
}
#mapbox{
	display: flex;
	position: relative;
	flex-direction: column;
}

#tbt{
width:5%;
}

#map{
	left: 17%;
	right: 15%;
	overflow: visible;
}

#listtable{
	display: flex;
	flex-direction: column;
	position: relative;
	width:100%; 
	margin: 0;
	align-items: center;
	left:2.15%;
}

#list{
	width:70%;
	margin-left: 15%;
	border-collapse: separate;
  border-spacing: 0 10px;
  padding-top: 15px;
}
#selectbar{
	display: flex;
	position: relative;
	left: 17.15%
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

#stt{
	font-size: 30pt !important;
    font-weight: bolder !important;
    opacity: 1 !important;
}

.section-map .search-head {
    position: relative;
    z-index: 3;
    margin-top: -115px;
    margin-bottom: 40px;
}

.search-box-container {
	display: flex;
    flex-direction: column;
    margin: 0 auto 0;
    padding: 10px;
    max-width: 640px;
    width: 100%;
    height: 100px;
    background-image: linear-gradient(90deg,#f7aa1d,#e1e500);
    box-shadow: 0 6px 15px 0 rgb(36 36 36 / 21%);
}
.search-box-container .inner {
    overflow: hidden;
    position: relative;
    width: 100%;
    height: 100%;
    background: #fff;
}

.search-box-container .inner input[type=text] {
    padding: 0 90px 0 20px;
    width: 100%;
    height: 100%;
    font-size: 34px;
    color: #0dbcaf;
    font-weight: 300;
    border: none!important;
}
#hname{
	font-weight: bold;
	color: orange;
	font-size: 20px;
}
.search-box-container .inner button {
    position: absolute;
    top: 0;
    right: 0;
    width: 90px;
    height: 100%;
    background: url(/resources/img/search.jpg) no-repeat 50%;
    background-size: cover;
}
#nametable{
	display: none;
	display: flex;
	flex-direction: column;
	position: relative;
	width:100%; 
	margin: 0;
	align-items: center;
	left:2.15%;
}
#nav{
  width:30%;
  margin-left:35%;
}
#paging{
	margin-left: 40%;
}
.search-top-container {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
   height: 120px;
   background: #FAFAD2;
   opacity: 0.7;
   margin-top:70pt;
}
</style>
<body>
 	<%@ include file="/WEB-INF/views/template/menu.jsp" %>
	<div class="menu" id="loginChk2"  style="display:none"></div>
 
 	<div class="search-top-container">
 		<h3 class="title" id="stt">검색결과</h3>
 	</div>
 	
 	<form action="/map/search1" method="get">
 	<div class="search-head"><div class="search-box-container"><div class="inner"><input type="text" name="HN"><button type="submit" onclick="search()"></button></div><!----></div></div>
 	</form>
   
	
	<input type="hidden" name="keyword" value=${keyword}>
	<table id="list"> 
		<tbody>
			<c:forEach var="list" items="${list}" begin="${begin}" end="${end}">
				<tr >
					<td id="hname">${list.hospitalname}</td>
					<td>주소 : ${list.addr}원</td>
					<td>종합 7종 : ${list.vacc1}원</td>
					<td>코로나 장염 : ${list.vacc2}</td>
					<td>켄넬코프 : ${list.vacc3}원</td>
					<td><button class='btn btn-success' onClick="window.open('https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${list.hospitalname}')">자세히</button></td>
					<td><button class='btn btn-warning' onclick="res('${list.hospitalname}');">예약하기</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<nav aria-label="Pagination" id="nav">
				<hr class="my-0" />
				<ul class="pagination justify-content-center my-4" id="paging"></ul>
	</nav>
	
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
</body>

<script>

paging(pageSize, totCnt, listCnt, pageNo);

 function res(hospitalname){ 
	 var HospitalName =  hospitalname;
	 console.log(HospitalName)
    location.href="/vacc/vacccalendar1?HospitalName="+HospitalName;
       }

</script>
</html>