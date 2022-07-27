<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/petRePage.css" rel="stylesheet"type="text/css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn_toggle").click(function() {
			$("#Toggle").toggle();
		});
		$("#btn_toggle2").click(function() {
			$("#Toggle2").toggle();
		});
		$("#btn_toggle3").click(function() {
			$("#Toggle3").toggle();
		});
	});
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
	<div class="main">
		<div id="mainText">
			<h3>${petName }님의 보험 추천상품으로 가격이 ${petPriceI2 }원인 ${petNameI } 상품을
				추천합니다.</h3>
		</div>
	</div>
	<br>

	<div class="main2">
		<div class="main_">
			우리 아이 보장 내역</div>
		<div class="main_">
			통원의료비보장 연 500만원 한도 1일당 1만원 공제 후 70% 보상
			<button id="btn_toggle">자세히</button>
			<div id="Toggle">통원의료비보장 동물병원 통원(수술 포함)시
				매년 횟수에 제한 없이 가입금액 한도로 보상해 드립니다. 보험개시일을 포함하여 30일 이내에 발생한 질병은 보상 하지
				않습니다. 보장개시일을 포함하여 1년 이내에 발생한 슬관절, 고관절 관련 질병 및 상해에 대해서는 보상하지 않습니다.
				자세한 사항은 반드시 약관을 확인하시기 바랍니다.</div>
		</div>
		<div class="main_">
			입원의료비보장 연 500만원 한도 1일당 1만원 공제 후 70% 보상
			<button id="btn_toggle2">자세히</button>
			<div id="Toggle2">입원의료비보장 동물병원 입원(수술 포함)시
				매년 횟수에 제한 없이 가입금액 한도로 보상해 드립니다. 보험개시일을 포함하여 30일 이내에 발생한 질병은 보상 하지
				않습니다. 보장개시일을 포함하여 1년 이내에 발생한 슬관절, 고관절 관련 질병 및 상해에 대해서는 보상하지 않습니다.
				자세한 사항은 반드시 약관을 확인하시기 바랍니다.</div>
		</div>

		<div id="main_1">
			반려견배상책임보장 연 1,000만원 한도
			<button id="btn_toggle3">자세히</button>
			<div id="Toggle3">반려견배상책임보장 반려견이 타인 또는
				타인의 반려동물에게 손해를 입혀 법률상 배상책임을 부담해야 하는 경우 가입 금액 한도로 보상해 드립니다. 1회 사고당
				자기부담금 3만원을 공제 후 지급해 드립니다. 피보험자 이외의 제 3자가 반려견과 함께 있을 때 발생한 사고는 보상하지
				않습니다. 자세한 사항은 반드시 약관을 확인하시기 바랍니다.</div>
		</div>

	</div>
	
	<br>
	<div id="download">
		<a href="/download">약관 다운로드</a>
	</div>

</body>
</html>