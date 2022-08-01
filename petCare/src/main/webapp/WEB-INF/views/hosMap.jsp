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
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1744d3b2aeed48eacbfc639e7fad61d3"></script>
<script src="/resources/js/map.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
<style>
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

</style>

<body>
 	<%@ include file="/WEB-INF/views/template/menu.jsp" %>
	<div class="menu" id="loginChk2"  style="display:none"></div>
 
 	<div class="search-top-container">
 		<h3 class="title" id="stt">동물병원 찾기</h3>
 	</div>
 	
 	<form action="/map/search" method="get">
 	<div class="search-head"><div class="search-box-container"><div class="inner"><input type="text" name="HN"><button type="submit" onclick="search()"></button></div><!----></div></div>
 	</form>
 	
 	<div id="nametable">
   		<table id="namelist" border="0"></table>
   </div>
   
	<div style="padding:10px;"></div>
   <div id="selectbar">
      <button class="btn btn-warning" onclick="now();">현위치</button>
      <!-- <button class="btn btn-warning" onclick="openarea();">주소선택</button>
      <button class="btn btn-warning">필터옵션</button> -->
   </div>
   <!-- 지도를 표시할 div 입니다 -->
   <div id="mapbox" style="width: 100%; height: 500px;">
      <div id="map"
         style="width: 70%; height: 100%; border: 3px solid orange;">
      </div>
   </div>
   <div style="padding:10px;"></div>
   <div id="listtable">
   
   	<table id="list" border="0"></table>
   </div>
   
   		<!--
         <div id="area">
         <div>주소 찾기</div>
         <form action="/map/region" method="get">
            <select name="region" id="region" onchange="chageSelect()">
               <option value="" selected>시,도</option>
               <option value="서울특별시">서울특별시</option>
               <option value="부산광역시">부산광역시</option>
               <option value="대구광역시">대구광역시</option>
               <option value="인천광역시">인천광역시</option>
               <option value="광주광역시">광주광역시</option>
               <option value="대전광역시">대전광역시</option>
               <option value="울산광역시">울산광역시</option>
               <option value="세종특별자치시">세종특별자치시</option>
               <option value="경기도">경기도</option>
               <option value="강원도">강원도</option>
               <option value="충청북도">충청북도</option>
               <option value="충청남도">충청남도</option>
               <option value="전라북도">전라북도</option>
               <option value="전라남도">전라남도</option>
               <option value="경상북도">경상북도</option>
               <option value="경상남도">경상남도</option>
               <option value="제주특별자치도">제주특별자치도</option>
            </select> <select name="zone">
               <option value="" id="zone" selected>시.군.구</option>
            </select>
            <input type="submit" value="확인">
         </form>
      -->
      
   <script>
   
	  var listlng = new Array();
      var listlat = new Array();
      var listname = new Array();
      var listAddr = new Array();
      var listnum = new Array();
      var avglat = 0;
      var avglng = 0; 
      
      
      <c:forEach var="list" items="${list}">
      listlng.push("${list.getLng()}");
      listlat.push("${list.getLat()}");
      listname.push("${list.getHospitalname()}");
      listAddr.push("${list.getAddr()}");
      listnum.push(0);
      </c:forEach>
      
      for (var i = 0; i < listlng.length; i++) {
      avglat += parseFloat(listlat[i])/listlat.length;
      avglng += parseFloat(listlng[i])/listlat.length;
      }
      
      
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = {
         center : new kakao.maps.LatLng(37.48862507655698, 126.9293523246618), // 지도의 중심좌표
         level : 4
      // 지도의 확대 레벨
      };
      var map = new kakao.maps.Map(mapContainer, mapOption);
      
      function panTo(lat, lng) {
          // 이동할 위도 경도 위치를 생성합니다 
          var moveLatLon = new kakao.maps.LatLng(lat, lng);
          
          // 지도 중심을 부드럽게 이동시킵니다
          // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
          map.panTo(moveLatLon);            
      }
      
      panTo(avglat,avglng);
      // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
      
      var markers = [];

      // 마커 하나를 지도위에 표시합니다 
      for (var i = 0; i < listlng.length; i++) {
         info(new kakao.maps.LatLng(listlat[i], listlng[i]), listname[i],
               listnum[i]);
      }
      
      function info(position, name, num) {
    	  
         // 마커를 생성합니다
         var marker = new kakao.maps.Marker({
            position : position,
            clickable : true
         // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
         });

         // 마커가 지도 위에 표시되도록 설정합니다
         marker.setMap(map);
         //임의로 저장
         var iwContent = '<div style="padding:5px;">'
               + name
               + '<br><a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query='+name+'" style="color:blue" target="_blank">자세히</a></div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

         // 인포윈도우를 생성합니다
         var infowindow = new kakao.maps.InfoWindow({
            position : position,
            content : iwContent
         });
         // 마커에 클릭이벤트를 등록합니다
         kakao.maps.event.addListener(marker, 'click', function() {
            // 마커 위에 인포윈도우를 표시합니다
            num += 1;
            if (num % 2 != 0) {
               infowindow.open(map, marker);
            } else {
               infowindow.close();
            }

         });
         kakao.maps.event.addListener(marker, 'mouseover', function() {
            if (num % 2 == 0) {
               infowindow.open(map, marker);
            }
         });
         kakao.maps.event.addListener(marker, 'mouseout', function() {
            if (num % 2 != 0) {
               infowindow.open(map, marker);
            } else {
               infowindow.close();
            }
         });
         // 생성된 마커를 배열에 추가합니다
         markers.push(marker);
      }
      
   	  //지도 +,-확대 축소
      var control = new kakao.maps.ZoomControl();
      map.addControl(control, kakao.maps.ControlPosition.TOPRIGHT); 
      // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
      var mapTypeControl = new kakao.maps.MapTypeControl();

      // 지도 타입 컨트롤을 지도에 표시합니다
      map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
      //마우스 움직일때 마다 갱신
      kakao.maps.event.addListener(map, 'mousemove', function(mouseEvent) {
   		getInfo();
   	});	
      
   </script>
</body>
</html>