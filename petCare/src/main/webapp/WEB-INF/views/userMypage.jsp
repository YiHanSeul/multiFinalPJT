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
<script type="text/javascript" src="/resources/js/userMypage.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	function test() {
		if (confirm("회원 탈퇴하시겠습니까?")) {
			window.open("54.176.130.216:8787/user/userDelete", "PopupNew",
					"width=500,height=400");
			//추후 주소가 바뀌면 그 주소로 해줘야함
		}
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/template/menu.jsp"%>
	<div id="menu-lists">
		<ul>
			<li class="menu-list"><a href="#myPage">내정보 관리</a></li>
			<li class="menu-list"><a href="#myPet">마이펫 관리</a></li>
			<li class="menu-list"><a href="#myBook">병원예약 현황</a></li>
			<li class="menu-list"><a href="#myVaccBook">예방접종 예약현황</a></li>
			<li class="menu-list"><a href="#myCommunity">동물병원 후기</a></li>
			<!-- <li class="menu-list"><a href="/mail/send">비밀번호찾기</a></li>  -->
			<li class="menu-list"><p onclick="userDelete()">회원탈퇴</p></li>
		</ul>
	</div>
	<!-- 페이지를 따로 만들지 말고 a태그로 같은 페이지에 있는 아이디로 이동하기 -->
	<div id="myInfos">
		<p class="myPage-p" id="myPage">내정보 관리</p>
		<hr />
		<c:if test="${not empty dto }">
			<ul>
				<li class="myInfo">이름: ${dto.username}</li>
				<li class="myInfo">닉네임 : ${dto.usernick } 
				
				
					<!-- onclick="window.open('http://localhost:8787/user/userChnick', 'width=430, height=500')"> -->
					
				</li>
				<li class="myInfo">이메일: ${dto.useremail } 
				</li>
				<li class="myInfo">전화번호: ${dto.userphone } 
				
				</li>
				<li class="myInfo">
					<input id="userUpdate" class="btn btn-warning" type="button" value="내 정보 수정하기" onclick="location.href='userUpdate'"> 
				</li>
			</ul>
		</c:if>
	</div>
	<div id="myPets">
		<p class="myPage-p" id="myPet">마이펫 관리</p>
		<hr>
		<div id="defaltPet">
		<c:if test="${empty petDto}">
			<p class="not">펫 정보가 없습니다.</p>
		</c:if>
		<c:if test="${not empty petDto}">
			<c:forEach var="petDto" items="${petDto}">
				<div>
				<ul>
					<li class="myInfo">펫 이름: ${petDto.petName }</li>
					<li class="myInfo">펫 나이: ${petDto.petAge }</li>
					<li class="myInfo">펫 성별: ${petDto.petGender }</li>
					<li class="myInfo">펫 중성화: ${petDto.petNe }</li>
					<br>
					<li class="myInfo"><button class="btn btn-warning" onclick="deletePet(${petDto.petKey})">삭제</button></li>
				</ul>
				</div>
			</c:forEach>
		</c:if>
		</div>
		
		
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
						class="btn btn-primary" type="submit" value="등록">
				</div>
			</form>
		<hr />
		</div>
		<br>
		<div id="petAdd-btn">
		<a class="btn btn-warning" href="/vacc/vaccform">펫 예방접종</a>
		<button class="btn btn-warning"  onclick="petRegitst()">펫 등록</button>
		</div>
		<br>
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
				<tr id="th">
					<td>예약번호</td>
					<td>예약날짜</td>
					<td>예약시간</td>
					<td>예약병원</td>
					<td>견종</td>
					<td>방문목적</td>
					<th></th>
				</tr>
				<c:forEach var="resDto" items="${resDto}">
				<tr>
					<td>${resDto.bookId }</td>
					<td>${resDto.bookDate }</td>
					<td>${resDto.bookHour }</td>
					<td>${resDto.hospitalName }</td>
					<td>${resDto.bookPetType }</td>
					<td>${resDto.bookWhy }</td>
					<td><button class="btn btn-warning" onclick="deleteRes(${resDto.bookId })">예약취소</button>
				</tr>
				</c:forEach>
			</table>
		</c:if>
		<hr />
	</div>
	<div id="myPets">
		<p class="myPage-p" id="myVaccBook">예방접종 예약현황</p>
		<c:if test="${empty vaccResDto}">
			<p class="not">예방접종 예약이 없습니다.</p>
		</c:if>
		<c:if test="${not empty vaccResDto}">
			<table class="table">
				<tr id="th">
					<td>예약번호</td>
					<th>예약날짜</th>
					<th>예약시간</th>
					<th>예약병원</th>
					<th>예방접종 주사</th>
					<th>가격</th>
					<th></th>
				</tr>
				<c:forEach var="vaccResDto" items="${vaccResDto}">
					<tr>
						<td> ${vaccResDto.bookId}</td>
						<td> ${vaccResDto.bookDate}</td>
						<td>${vaccResDto.bookHour}</td>
						<td> ${vaccResDto.hospitalName}</td>
						<td> ${vaccResDto.vaccName}</td>
						<td>${vaccResDto.vacc}</td>
						<td><button class="btn btn-warning" onclick="deleteVacRes(${vaccResDto.bookId})">예약취소</button>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<div id="myPets">
		<hr />
		<p class="myPage-p" id="myCommunity">동물병원 후기</p>
		<c:if test="${empty listBoardDto}">
			<p class="not">후기 내역이 없습니다.</p>
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
<script>
	function deleteVacRes(bookId){
		location.href="/res/del?bookId="+bookId;
	}
	function deleteRes(bookId){
		location.href="/res/delhos?bookId="+bookId;
	}
	function deletePet(petKey){
		location.href="/pet/del?petKey="+petKey;
	}
</script>
</html>



