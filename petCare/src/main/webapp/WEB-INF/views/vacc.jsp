<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/vacc.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="/resources/css/vacc.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	let pet = "${petDto}";
	let user = "${userDto}";
	function petVaccRegitst(get) {
		let classNM = $(get);
		console.log($(get).next());
		$(get).parent().parent().next().removeClass('hide');
	}
	function closePopup(get) {
		$(get).parent().addClass('hide');
	}

	function vaccAdd(get) {
		$(get).next().removeClass('hide');
		$(get).addClass('hide');
	}

</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	 <div class="search-top-container">
 		<h3 class="title" id="stt">예방접종</h3>
 	</div>
	<div id="total">
		<div id="vaccs">
			<div class="vacc">
				<p>종합 7종 백신(DA2PPL)</p>
				<span> 개 홍역(Canine Distemper), 전염성 간염(Infectious Hepatitis),
					아데노바이러스성 기관지염(Adenovirus Bronchitis), 파보바이러스성 장염(Pavovirus
					Enteritis), 파라인플루엔자성 기관지염(Parainflluenza) 및 렙토스피라증(Leptospirosis)
					등의 질병을 예방해주는 가장 중요한 예방접종이다. 6~8주부터 시작해서 2~3주 간격으로 5회 이상 접종, 매년 1회
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
		</div>
		<div id="myPet">
			<c:if test="${empty petDto}">
			<div id="test">
				<p class="not">펫 정보가 없습니다.</p>
				<button id="petins" class="btn btn-warning" onclick="location.href='/user/userMypage'">펫등록하기</button>
				</div>
			</c:if>
			<c:if test="${not empty petDto}">
				<c:forEach var="petDto" items="${petDto}">
					<div class="petInfoDetail">
						<div class="petform1">
							<div>
								<p class="petInfo">이름: ${petDto.petName }</p>
								<p class="petInfo">나이: ${petDto.petAge }</p>
								<p class="petInfo">성별: ${petDto.petGender }</p>
								<p class="petInfo">중성화: ${petDto.petNe }</p>
								<input type="button" class="btn btn-warning" data-target="${petDto.petKey}" value="예방접종 상세보기" onclick="petVaccRegitst(this)">
								<input type="button" class="btn btn-warning" value="예약하기" onclick="location.href='/vacc/vacchos'">
							</div>
								<c:if test="${empty petVaccListDto}">
									<p class="not">백신 접종 현황이 없습니다.</p>
								</c:if>
								<c:if test="${not empty petVaccListDto}">
									<table class="table">
										<tr>
											<th>백신명</th>
											<th>최근 백신 접종일</th>
											<th>다음 백신 접종일</th>
										</tr>
										<c:forEach var="items" items="${petVaccDto}">
											<c:choose>
												<c:when test="${petDto.petKey  eq  items.petKey }">
													<tr id="petVaccInfos">
														<td class="petVaccInfo">${items.vaccName }</td>
														<td class="petVaccInfo">${items.vaccMonth }</td>
														<td class="petVaccInfo">${items.nextVaccMonth }</td>
													</tr>
												</c:when>
											</c:choose>
										</c:forEach>
									</table>
								</c:if>
						</div>
						<div class="petform2 hide">
							<div class="hideVaccForm" data-target="${petDto.petKey}">
								<c:if test="${empty petVaccListDto}">
									<p class="not">백신 접종 현황이 없습니다.</p>
								</c:if>
								<c:if test="${not empty petVaccListDto}">
									<table class="table">
										<tr>
											<th>백신명</th>
											<th>접종일</th>
											<th>다음 백신일</th>
										</tr>
										<c:forEach var="items" items="${petVaccListDto}">
											<c:choose>
												<c:when test="${petDto.petKey  eq  items.petKey }">
													<tr id="petVaccInfos">
														<td class="petVaccInfo">${items.vaccName }</td>
														<td class="petVaccInfo">${items.vaccMonth }</td>
														<td class="petVaccInfo">${items.nextVaccMonth }</td>
													</tr>
												</c:when>
											</c:choose>
										</c:forEach>
									</table>
								</c:if>
								<input type="button" class="btn" value="백신추가"
									onclick="vaccAdd(this)">
								<form action="/vacc/vaccadd" method="get" class="hide">
									<hr>
									<input type="hidden" value="${petDto.petKey}" name="petKey">
									<div id="selectForms">
										<select class="form-control" name="vaccName" class="selectForm">
											<option value="종합7종">종합 7종백신</option>
											<option value="코로나">코로나</option>
											<option value="캔넬코프">캔넬코프</option>
										</select> 
										<input class="form-control selectForm" type="date" name="vaccMonth" id="vaccdate">
										<input class="btn btn-warning" type="submit"value="예방접종 기록">
									</div>
								</form>
							</div>
							<input type="button" class="btn btn-danger" id="selectCloseBtn"
								value="닫기" onclick="closePopup(this)">
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>


<script>

var no = ${no};
if(no == 6){
	alert("날짜를 입력해주세요!");
	$.ajax({
		type:"get",
		url:"/user/cleanNumb"
	});
}
</script>
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
</html>


