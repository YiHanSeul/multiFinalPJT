<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/vacc.js"></script>
<link href="/resources/css/vacc.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<div id="vaccs">
		<div class="vacc">
			<p>종합 7종 백신(DA2PPL)</p>
			<span> 개 홍역(Canine Distemper), 전염성 간염(Infectious Hepatitis),
				아데노바이러스성 기관지염(Adenovirus Bronchitis), 파보바이러스성 장염(Pavovirus
				Enteritis), 파라인플루엔자성 기관지염(Parainflluenza) 및 렙토스피라증(Leptospirosis) 등의
				질병을 예방해주는 가장 중요한 예방접종이다. 6~8주부터 시작해서 2~3주 간격으로 5회 이상 접종, 매년 1회
				추가접종한다. </span>
		</div>
		<div class="vacc">
			<p>코로나 장염 예방접종</p>
			<span> 코로나바이러스성 장염은 피가 섞인 설사를 하고, 구토를 하며, 열이 나고, 식욕이 없어지는 증세가
				특징. 개들에게는 치명적인 전염병이다. 생후 6~8주부터 2~3주 간격으로 3회 접종, 매년 1회 추가접종한다.</span>
		</div>
		<div class="vacc">
			<p>켄넬코프 예방접종</p>
			<span>주로 강아지들이 대량으로 있는 곳에서 공기를 통해 쉽게 감염되며 심한 마른기침을 일으키며 폐렴으로
				진행되기도 한다. 생후 6~8주부터 2~3주 간격으로 3회 접종, 6개월마다 환절기 전 추가접종한다.</span>
		</div>
		<div class="vacc">
			<p>광견병 예방접종</p>
			<span>생후 3개월 이상 된 강아지에게 1회 접종한 후 6개월 후 재접종한다. 매년 추가접종을 해야 한다.</span>
		</div>

		<div id="nametable">
			<table id="namelist"></table>
		</div>
		<div style="padding: 10px;"></div>
		<div id="selectbar">
			<button class="btn btn-warning" onclick="now();">현위치</button>
			<button class="btn btn-warning" onclick="openarea();">주소선택</button>
			<!--   <button class="btn btn-warning">필터옵션</button> -->
		</div>
		<!-- 지도를 표시할 div 입니다 -->
		<div id="mapbox" style="width: 100%; height: 500px;">
			<div id="map"
				style="width: 100%; height: 100%; border: 3px solid orange;"></div>
		</div>
		<div style="padding: 10px;"></div>
		<div id="listtable">

			<table id="list"></table>
		</div>

		<div id="area" class="hide">
			<div id="areaForm">
			<p id="addrfindtxt">주소 찾기</p>
			<form action="/prevent/addrfind" method="get" >
			<div id="innerForm">
				<select class="btn btn-default" data-toggle="dropdown"name="region" id="region" onchange="chageSelect()">
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
				</select> <select class="btn btn-default" name="zone">
					<option  value="" id="zone" selected>시.군.구</option>
				</select>
				</div>
				<input class="btn btn-primary" onclick="closePopup()" value="취소">
				<input class="btn btn-warning" type="submit" value="확인">
			</form>
		</div>
		</div>
	</div>
</body>
</html>


