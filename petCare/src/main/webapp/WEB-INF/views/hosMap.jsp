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
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
.btn-warning {
   text-align: right !important;
   padding-left: 4px !important;
}

#area {
   border: 1px solid black;
   background-color: pink;
   top: 30%;
   left: 40%;
   right: 40%;
   display: none;
}

#mapbox {
   display: flex;
   position: relative;
   flex-direction: column;
}

#tbt {
   width: 5%;
}

#map {
   left: 17%;
   right: 15%;
   overflow: visible;
}

#listtable {
   display: flex;
   flex-direction: column;
   position: relative;
   width: 100%;
   margin: 0;
   align-items: center;
   left: 2.15%;
}

#list {
   width: 70%;
}

#selectbar {
   display: flex;
   position: relative;
   left: 17.15%;
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

#stt {
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
   background-image: linear-gradient(90deg, #f7aa1d, #e1e500);
   box-shadow: 0 6px 15px 0 rgb(36 36 36/ 21%);
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
   border: none !important;
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

#nametable {
   display: none;
   display: flex;
   flex-direction: column;
   position: relative;
   width: 100%;
   margin: 0;
   align-items: center;
   left: 2.15%;
}
</style>

<body onload="javascript:start();">
   <%@ include file="/WEB-INF/views/template/menu.jsp"%>
   <div class="menu" id="loginChk2" style="display: none"></div>

   <div class="search-top-container">
      <h3 class="title" id="stt">???????????? ??????</h3>
   </div>
   

 	<form action="/map/search" method="get">
 	<div class="search-head"><div class="search-box-container"><div class="inner"><input type="text" name="HN"><button type="submit"></button></div><!----></div></div>
 	</form>

   <div id="nametable">
      <table id="namelist" border="0"></table>
   </div>
   <div style="padding: 10px;"></div>
   <div id="selectbar">
      <button class="btn btn-warning" onclick="now();">?????????</button>
      <button class="btn btn-warning" onclick="openarea();">????????????</button>
      <!--   <button class="btn btn-warning">????????????</button> -->
   </div>
   <!-- ????????? ????????? div ????????? -->
   <div id="mapbox" style="width: 100%; height: 500px;">
      <div id="map"
         style="width: 70%; height: 100%; border: 3px solid orange;"></div>
   </div>
   <div style="padding: 10px;"></div>
   <div id="listtable">

      <table id="list" border="0"></table>
   </div>

   <div id="area">
      <div>?????? ??????</div>
      <form action="/map/region" method="get">
         <select name="region" id="region" onchange="chageSelect()">
            <option value="" selected>???,???</option>
            <option value="???????????????">???????????????</option>
            <option value="???????????????">???????????????</option>
            <option value="???????????????">???????????????</option>
            <option value="???????????????">???????????????</option>
            <option value="???????????????">???????????????</option>
            <option value="???????????????">???????????????</option>
            <option value="???????????????">???????????????</option>
            <option value="?????????????????????">?????????????????????</option>
            <option value="?????????">?????????</option>
            <option value="?????????">?????????</option>
            <option value="????????????">????????????</option>
            <option value="????????????">????????????</option>
            <option value="????????????">????????????</option>
            <option value="????????????">????????????</option>
            <option value="????????????">????????????</option>
            <option value="????????????">????????????</option>
            <option value="?????????????????????">?????????????????????</option>
         </select> <select name="zone">
            <option value="" id="zone" selected>???.???.???</option>
         </select> <input type="submit" value="??????">
      </form>
   </div>
   <script>
      var listlng = new Array();
      var listlat = new Array();
      var listname = new Array();
      var listAddr = new Array();
      var listnum = new Array();
      var namelistname = new Array();
      var namelistAddr = new Array();
      var namelistnum = new Array();
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
         avglat += parseFloat(listlat[i]) / listlat.length;
         avglng += parseFloat(listlng[i]) / listlat.length;
      }

      var mapContainer = document.getElementById('map'), // ????????? ????????? div 
      mapOption = {
         center : new kakao.maps.LatLng(37.48862507655698, 126.9293523246618), // ????????? ????????????
         level : 4
      // ????????? ?????? ??????
      };
      var map = new kakao.maps.Map(mapContainer, mapOption);

      function panTo(lat, lng) {
         // ????????? ?????? ?????? ????????? ??????????????? 
         var moveLatLon = new kakao.maps.LatLng(lat, lng);

         // ?????? ????????? ???????????? ??????????????????
         // ?????? ????????? ????????? ?????? ???????????? ?????? ???????????? ?????? ?????? ???????????????
         map.panTo(moveLatLon);
      }

      panTo(avglat, avglng);
      // ????????? ????????? ?????? ????????? ????????? ?????? ???????????????

      var markers = [];

      // ?????? ????????? ???????????? ??????????????? 
      for (var i = 0; i < listlng.length; i++) {
         info(new kakao.maps.LatLng(listlat[i], listlng[i]), listname[i],
               listnum[i]);
      }

      function info(position, name, num) {

         // ????????? ???????????????
         var marker = new kakao.maps.Marker({
            position : position,
            clickable : true
         // ????????? ???????????? ??? ????????? ?????? ???????????? ???????????? ????????? ???????????????
         });

         // ????????? ?????? ?????? ??????????????? ???????????????
         marker.setMap(map);
         //????????? ??????
         var iwContent = '<div style="padding:5px;">'
               + name
               + '<br><a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query='
               + name
               + '" style="color:blue" target="_blank">?????????</a></div>'; // ?????????????????? ????????? ???????????? HTML ??????????????? document element??? ???????????????

         // ?????????????????? ???????????????
         var infowindow = new kakao.maps.InfoWindow({
            position : position,
            content : iwContent
         });
         // ????????? ?????????????????? ???????????????
         kakao.maps.event.addListener(marker, 'click', function() {
            // ?????? ?????? ?????????????????? ???????????????
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
         // ????????? ????????? ????????? ???????????????
         markers.push(marker);
      }

      //?????? +,-?????? ??????
      var control = new kakao.maps.ZoomControl();
      map.addControl(control, kakao.maps.ControlPosition.TOPRIGHT);
      // ?????? ????????? ??????????????? ?????? ????????? ????????? ??? ?????? ???????????? ???????????? ???????????????
      var mapTypeControl = new kakao.maps.MapTypeControl();

      // ?????? ?????? ???????????? ????????? ???????????????
      map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
      //????????? ???????????? ?????? ??????
      kakao.maps.event.addListener(map, 'mousemove', function(mouseEvent) {
         getInfo();
      });
      
      function start(){
    	  now();
    	  getInfo();
      }
      
   </script>
</body>
</html>