<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#mypageDiv{
	width: 60%;
	margin: auto;
	margin-top: 20%;
}
.not tr td{
	text-align: center;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/template/menu2.jsp" %>
<div id="mypageDiv">
<b>병원 예약 리스트</b>
	<div id="myPets">
		<c:if test="${empty resDto }">
			<table class="table not" >
			<tr>
			<td>예방접종 예약이 없습니다.</td>
			</tr>
			</table>
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
				<form action="/hos/bookagree" method="get">
					<input type="hidden" name="bookId" value="${resDto.bookId }">
					<td>${resDto.bookId }</td>
					<td>${resDto.bookDate }</td>
					<td>${resDto.bookHour }</td>
					<td>${resDto.hospitalName }</td>
					<td>${resDto.bookPetType }</td>
					<td>${resDto.bookWhy }</td>
					<td><input type="submit" class="btn btn-warning" value="승인"></td>
					</form>
				</tr>
				</c:forEach>
			</table>
		</c:if>
		<hr />
	</div>
	<div id="myPets">
		<b>예방접종 예약현황</b>
		<c:if test="${empty vaccResDto}">
			<table class="table not" >
			<tr>
			<td>예방접종 예약이 없습니다.</td>
			</tr>
			</table>
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
					<form action="/hos/vaccbookagree" method="get">
					<input type="hidden" name="vaccbookId" value="${vaccResDto.bookId}">
						<td> ${vaccResDto.bookId}</td>
						<td> ${vaccResDto.bookDate}</td>
						<td>${vaccResDto.bookHour}</td>
						<td> ${vaccResDto.hospitalName}</td>
						<td> ${vaccResDto.vaccName}</td>
						<td>${vaccResDto.vacc}</td>
						<td><input type="submit" class="btn btn-warning" value="승인"></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<b>병원 예약 접수완료</b>
	<div id="myPets">
		<c:if test="${empty agreeresDto }">
			<table class="table not" >
			<tr>
			<td>예방접종 예약이 없습니다.</td>
			</tr>
			</table>
		</c:if>
		<c:if test="${not empty agreeresDto }">
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
				<c:forEach var="agreeresDto" items="${agreeresDto}">
				<tr>
					<td>${agreeresDto.bookId }</td>
					<td>${agreeresDto.bookDate }</td>
					<td>${agreeresDto.bookHour }</td>
					<td>${agreeresDto.hospitalName }</td>
					<td>${agreeresDto.bookPetType }</td>
					<td>${agreeresDto.bookWhy }</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>
		<hr />
	</div>
	<div id="myPets">
		<b>예방접종 접수완료</b>
		<c:if test="${empty agreevaccresDto}">
			<table class="table not" >
			<tr>
			<td>예방접종 예약이 없습니다.</td>
			</tr>
			</table>
		</c:if>
		<c:if test="${not empty agreevaccresDto}">
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
				<c:forEach var="agreevaccresDto" items="${agreevaccresDto}">
					<tr>
						<td> ${agreevaccresDto.bookId}</td>
						<td> ${agreevaccresDto.bookDate}</td>
						<td>${agreevaccresDto.bookHour}</td>
						<td> ${agreevaccresDto.hospitalName}</td>
						<td> ${agreevaccresDto.vaccName}</td>
						<td>${agreevaccresDto.vacc}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</div>
</body>
</html>