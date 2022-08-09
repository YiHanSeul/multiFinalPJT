<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/petRePage.css" rel="stylesheet"type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/petRePage.js"></script> <!-- Pet Result Page -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<div class="main">
		<div id="mainText">
			<h3>${petName }님의
				펫보험 상품으로 가격이 ${petPriceI2 }원인 ${petNameI }을 추천합니다!
				<c:set var="test" value="${petPriceI2 }" scope="session" />

				<c:if test="${test == '41,940'}">
					<a href="/pay">결제</a>
				</c:if>
				<c:if test="${test == '42,700'}">
					<a href="/pay1">결제1</a>
				</c:if>
				<c:if test="${test == '45,170'}">
					<a href="/pay2">결제2</a>
				</c:if>
			</h3>
		</div>
	</div>
	<br>

	<h4>
			<a
				href="https://direct.samsungfire.com/ria/pc/product/pet/?state=Front&gclid=Cj0KCQjw0JiXBhCFARIsAOSAKqA0eKIuT5tLoISxS-9xVBIxwQBWcDps9PinHV3KVn4MpDDM-5gUR8oaAtU1EALw_wcB"
				target='_blank'>삼성화재 다이렉트 반려견보험</a> &nbsp;&nbsp;&nbsp;
			<a
				href="https://www.ppmint.com/pet/product.do#!/contractPopup"
				target='_blank'>메리츠화재 공식 펫퍼민트</a> &nbsp;&nbsp;&nbsp;
			<a
				href="https://petsafe.co.kr/"
				target="_blank">DB 손해보험 펫세이프</a> &nbsp;&nbsp;&nbsp;
		</h4>

	
	
	<div class="main2">
		
	
		
		<div class="mainList">
			가. 특약에 따라 보상하는 손해의 종류
			<button id="btn_toggle">자세히</button>
			<div id="Toggle">입원 치료비, 통원 치료비, 수술비, 검사비 등이 다름. (본 사이트는
				통원의료비보장 연 500만원 한도 1일당 1만원 공제 후 70% 보상, 입원의료비보장 연 500만원 한도 1일당 1만원
				공제 후 70% 보상, 반려견배상책임보장 연 1,000만원 한도를 기준으로 적합한 가격을 제시함을 알림.)</div>
		</div>

		<div class="mainList">
			나. 가입 거절, 보험금 지급 거절, 계약 해지에 관한 내용

			<button id="btn_toggle2">자세히</button>
			<div id="Toggle2">본 사이트가 최대로 보는 신규 가입의 나이는 최대 만 6살을 기준으로 하고 있으며
				이는 다른 사이트와 상이 할 수 있음. 반려 동물의 나이에 따라 가입이 거절될 수 있으며 계약 전 알릴 의무는 충실히
				이행해야 함. 이를 어길 시 계약이 해지되거나 보험금 지급이 거절 될 수 있음.</div>
		</div>

		<div id="mainList2">
			다. 순수보장성 보험이라 만기환급금이 없음.
			<button id="btn_toggle3">자세히</button>
			<div id="Toggle3">다만, 보험사고가 발생하지 않은 채 중도해지시 미경과보험료를 받을 수 있음.</div>
		</div>



	</div>
	

	<br><br><br><br>
	<div id="download">
		<a href="/download">약관 다운로드</a>
	</div>



</body>
</html>