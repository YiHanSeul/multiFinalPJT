<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/resources/css/userMypage.css" rel="stylesheet" type="text/css">
<script>
	function test() {
		if (confirm("회원 탈퇴하시겠습니까?")) {
			location.href = 'userDelete'
		} else {
			alert("취소를 누르셨습니다.");
		}
	}
	function petRegitst(){
		console.log("클릭되나?");
		const popup = document.querySelector('#petAdd-forms');;
		popup.classList.add('has-filter');
		popup.classList.remove('hide');
	}
	function closePopup(){
		const popup = document.querySelector('#petAdd-forms');
		  popup.classList.add('hide');

	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<div id="menu-lists">
		<ul>
			<li class="menu-list"><a href="#check1">보호자 정보관리</a></li>
			<li class="menu-list"><a href="#check2">마이펫 관리</a></li>
			<li class="menu-list"><a href="#">예약 목록</a></li>
			<li class="menu-list"><a href="#">후기관리</a></li>
			<li class="menu-list"><a href="#">게시글 관리</a></li>
			<li class="menu-list"><a href="/user/findpwing">비밀번호찾기</a></li>
		</ul>
	</div>
	<!-- 페이지를 따로 만들지 말고 a태그로 같은 페이지에 있는 아이디로 이동하기 -->
	<div id="myInfos">
		<p class="myPage-p">내정보</p>
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
<!-- 	<div id="myPets"> -->
		<p class="myPage-p">나의펫</p>
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
					<li class="myInfo">petVac1: ${petDto.petVac1 } | petVac2:
						${petDto.petVac2 } | petVac3: ${petDto.petVac3 }</li>
					<li class="myInfo">펫 중성화: ${petDto.petNe }</li>
					<hr id="line"/>
				</ul>
			</c:forEach>
		</c:if>
		<div  id="petAdd-forms" class="hide" >
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
			</ul >
			<ul class="petAdd-form">
				<li>반려견품종 <input type="text" id="petType" name="petType"></li>
			</ul>
			<ul class="petAdd-form">
				<li>중성화여부 O<input type="radio" name="petNe" value="O"
					id="petNe"> X<input type="radio" name="petNe" value="X"
					id="petNe"></li>
			</ul>
			<ul class="petAdd-form">
				<li>예방접종현황 A<input type="checkbox" value="A" name="petVac">
					B<input type="checkbox" value="B" name="petVac"> C<input
					type="checkbox" value="C" name="petVac"></li>
			</ul>
			<div id="petAddform-btn">
			<span class="btn btn-danger" onclick="closePopup()">취소</span>
			<input class ="btn btn-primary" type="submit" value="전송">
			</div>
		</form>
		</div>
		<button class="btn btn-warning" id="petAdd-btn" onclick="petRegitst()">등록</button>
		
	</div>
	
	
	<!-- 수정해야함 -->
	<div id="myPets">
		<p class="myPage-p">예약현황</p>
		<hr/>
		<c:if test="${empty resDto }">
			<p class="not">예약 정보가 없습니다.</p>
		</c:if>
		<c:if test="${not empty resDto }">
			<table class="table">
				<tr>
					<td>예약번호</td>
					<td>예약시간</td>
					<td>견종</td>
					<td>예약날짜</td>
					<td>방문목적</td>
				</tr>
				<tr>
					<td>${resDto.bookId }</td>
					<td>${resDto.bookHour }</td>
					<td>${resDto.bookPetType }</td>
					<td>${resDto.bookDate }</td>
					<td>${resDto.bookWhy }</td>
				</tr>
			</table>
		</c:if>
	</div>
	<div id="myPets">
		<p class="myPage-p">병원 방문 후기</p>
		<hr />
	</div>
	<div id="myPets">
		<hr />
		<p class="myPage-p">고객센터 문의내용</p>
		<hr>
	</div>
	
	<input type="button" value="회원탈퇴" onclick="test()">
	
</body>
</html>



