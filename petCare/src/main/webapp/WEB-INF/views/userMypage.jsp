<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/resources/css/userMypage.css" rel="stylesheet"
	type="text/css">
<script>
	function test() {
		if (confirm("회원 탈퇴하시겠습니까?")) {
			window.open("http://localhost:8787/user/userDelete", "PopupNew",
					"width=500,height=400");
			//추후 주소가 바뀌면 그 주소로 해줘야함

			/* window.open('about:blank', 'width=300, height=200').location.href = 'userDelete'  */

		} else {
			alert("취소를 누르셨습니다.");
		}
	}
	function petRegitst() {
		const popup = document.querySelector('#petAdd-forms');
		popup.classList.add('has-filter');
		popup.classList.remove('hide');
	}
	function closePopup() {
		const popup = document.querySelector('#petAdd-forms');
		popup.classList.add('hide');

	}
	test = "${vaccResDto}";
	console.log(test);
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<div id="menu-lists">
		<ul>
			<li class="menu-list"><a href="#myPage">보호자 정보관리</a></li>
			<li class="menu-list"><a href="#myPet">마이펫 관리</a></li>
			<li class="menu-list"><a href="#myBook">예약 목록</a></li>
			<li class="menu-list"><a href="#myHosBookRe">후기관리</a></li>
			<li class="menu-list"><a href="#">게시글 관리</a></li>
			<li class="menu-list"><a href="/user/findpwing">비밀번호찾기</a></li>
			<li class="menu-list"><p onclick="test()">회원탈퇴</p></li>
		</ul>
	</div>
	<!-- 페이지를 따로 만들지 말고 a태그로 같은 페이지에 있는 아이디로 이동하기 -->
	<div id="myInfos">
		<p class="myPage-p" id="myPage">내정보</p>
		<hr />
		<c:if test="${not empty dto }">
			<ul>
				<li class="myInfo">아이디: ${dto.username}</li>
				<li class="myInfo">닉네임 : ${dto.usernick } <input id="usernick"
					class="btn btn-warning" type="button" value="수정"
					onclick="location.href='userChnick'">
				</li>
				<li class="myInfo">이메일: ${dto.useremail } <input id="useremail"
					class="btn btn-warning" type="button" value="수정"
					onclick="location.href='userChemail'">
				</li>
				<li class="myInfo">전화번호: ${dto.userphone } <input
					id="userphone" class="btn btn-warning" type="button" value="수정"
					onclick="location.href='userChphone'">
				</li>
			</ul>
		</c:if>
	</div>
	<div id="myPets">
		<p class="myPage-p" id="myPet">나의펫</p>
		<hr>
		<c:if test="${empty petDto}">
			<p class="not">>펫 정보가 없습니다.</p>
		</c:if>
		<c:if test="${not empty petDto}">
			<c:forEach var="petDto" items="${petDto}">
				<ul>
					<li class="myInfo">펫 이름: ${petDto.petName }</li>
					<li class="myInfo">펫 나이: ${petDto.petAge }</li>
					<li class="myInfo">펫 성별: ${petDto.petGender }</li>
					<li class="myInfo">펫 중성화: ${petDto.petNe }</li>
				</ul>
			</c:forEach>
		</c:if>
		<div id="petAdd-forms" class="hide">
			<form action="/pet/petInfoRes" method="get">
				<ul class="petAdd-form">
					<li>반려견이름 <input type="text" name="petName"></li>
				</ul>
				<ul class="petAdd-form">
					<li>반려견나이 <input type="text" name="petAge"></li>
				</ul>
				<ul class="petAdd-form">
					<li>반려견성별 남<input type="radio" id="petGender" name="petGender"
						value="남"> 여<input type="radio" id="petGender"
						name="petGender" value="여">
					</li>
				</ul>
				<ul class="petAdd-form">
					<li>반려견품종 <input type="text" id="petType" name="petType"></li>
				</ul>
				<ul class="petAdd-form">
					<li>중성화여부 O<input type="radio" name="petNe" value="O"
						id="petNe"> X<input type="radio" name="petNe" value="X"
						id="petNe"></li>
				</ul>

				<div id="petAddform-btn">
					<span class="btn btn-danger" onclick="closePopup()">취소</span> <input
						class="btn btn-primary" type="submit" value="전송">
				</div>
			</form>
		<hr />
		</div>
		<button class="btn btn-warning" id="petAdd-btn" onclick="petRegitst()">등록</button>
		<hr>
	</div>

	<!-- 수정해야함 -->
	<div id="myPets">
		<p class="myPage-p" id="myBook">병원 예약현황</p>
		<c:if test="${empty resDto }">
			<p class="not">예약 정보가 없습니다.</p>
		</c:if>
		<c:if test="${not empty resDto }">
			<table class="table">
				<tr>
					<td>예약번호</td>
					<td>예약날짜</td>
					<td>예약시간</td>
					<td>견종</td>
					<td>방문목적</td>
				</tr>
				<c:forEach var="resDto" items="${resDto}">
				<tr>
					<td>${resDto.bookId }</td>
					<td>${resDto.bookDate }</td>
					<td>${resDto.bookHour }</td>
					<td>${resDto.bookPetType }</td>
					<td>${resDto.bookWhy }</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>
		<hr />
	</div>
	<div id="myPets">
		<p class="myPage-p" id="myHosBookRe">예방접종 예약현황</p>
		<c:if test="${empty vaccResDto}">
			<p class="not">예방접종 예약이 없습니다.</p>
		</c:if>
		<c:if test="${not empty vaccResDto}">
			<table class="table">
				<tr>
					<td>예약번호</td>
					<th>예약날짜</th>
					<th>예약시간</th>
					<th>예약병원</th>
					<th>예방접종 주사</th>
					<th>가격</th>
				</tr>
				<c:forEach var="vaccResDto" items="${vaccResDto}">
					<tr>
						<td> ${vaccResDto.bookId}</td>
						<td> ${vaccResDto.bookDate}</td>
						<td>${vaccResDto.bookHour}</td>
						<td> ${vaccResDto.hospitalName}</td>
						<td> ${vaccResDto.vaccName}</td>
						<td>${vaccResDto.vacc}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<div id="myPets">
		<hr />
		<p class="myPage-p">동물병원 후기</p>
		<c:if test="${empty listBoardDto}">
			<p class="not">예방접종 예약이 없습니다.</p>
		</c:if>
		<c:if test="${not empty listBoardDto}">
			<table class="table">
				<tr>
					<td>글번호</td>
					<th>작성날짜</th>
					<th>제목</th>
					<th>병원이름</th>
					<th>별점</th>
				</tr>
				<c:forEach var="listBoardDto" items="${listBoardDto}">
					<tr>
						<td> ${listBoardDto.boardCnt}</td>
						<td> ${listBoardDto.comDate}</td>
						<td>${listBoardDto.comTitle}</td>
						<td> ${listBoardDto.field1}</td>
						<td>${listBoardDto.rating}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		
	</div>


</body>
</html>



