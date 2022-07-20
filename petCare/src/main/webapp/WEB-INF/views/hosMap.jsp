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

<style>
#area {
   border: 1px solid black;
   background-color: pink;
   position: absolute;
   top: 400px;
   left: 400px;
   display: none;
}
</style>

<body>
 
   <div>
      <button onclick="now();">현위치</button>
      <button onclick="openarea();">주소선택</button>
      <button>필터옵션</button>
   </div>
   <!-- 지도를 표시할 div 입니다 -->
   <div style="width: 100%; height: 500px">
      <div id="map"
         style="width: 60%; height: 500px; margin: 100px; border: 3px solid blue;">
         
         </div>
   </div>
   <div>

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
      </div>
      <table id="list" border="1">
         
      </table>
   </div>
   <script>
     
	  var listlng = new Array();
      var listlat = new Array();
      var listname = new Array();
      var listnum = new Array(); 
      var avglat = 0;
      var avglng = 0; 
      
      <c:forEach var="list" items="${list}">
      listlng.push("${list.getLng()}");
      listlat.push("${list.getLat()}");
      listname.push("${list.getHospitalname()}");
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
               + '<br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">자세히</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">예약</a></div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

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
       
   </script>
</body>
</html>