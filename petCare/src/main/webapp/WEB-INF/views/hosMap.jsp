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
<script type="text/javascript">
	function openarea(){
		 
	}
</script>
<body>
	
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1744d3b2aeed48eacbfc639e7fad61d3"></script>
	<!-- 지도를 표시할 div 입니다 --> 
	
	<div>
		<button >현위치</button>
		<button onclick="openarea();">주소선택</button>
		<button>필터옵션</button>
	</div>
	<div style="width: 100%; height: 500px">
	<div id="map" style="width: 60%; height: 500px;  margin: 100px; border: 3px solid blue; " ></div>
	</div>
	<div>
	
	<div id="area">
		<form> 
		</form>
	</div>
		<table border="1">
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.hospitalname}</td>
					<td>${dto.addr}</td>
					<td>${dto.lat }</td>
					<td>${dto.lng }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script>
		var listlng = new Array();
		var listlat = new Array();
		var listname = new Array();
		var listnum = new Array();

		<c:forEach var="list" items="${list}">
		listlng.push("${list.getLng()}");
		listlat.push("${list.getLat()}");
		listname.push("${list.getHospitalname()}");
		listnum.push(0);
		</c:forEach>
 
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.450701, 127.070667), // 지도의 중심좌표
			level : 4
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption);

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
		//중심 좌표
		/* kakao.maps.event.addListener(map, 'center_changed', function() {

		    // 지도의  레벨을 얻어옵니다
		    var level = map.getLevel();

		    // 지도의 중심좌표를 얻어옵니다 
		    var latlng = map.getCenter(); 

		    var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
		    message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>';

		     console.log(message);

		});*/
	</script>
</body>
</html>