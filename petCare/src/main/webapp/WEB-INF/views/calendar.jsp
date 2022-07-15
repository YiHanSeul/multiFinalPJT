<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function doDisplay(){
		var con = document.getElementById("time");
		if(con.style.display=='none'){
			con.style.display = 'block';
		}else{
			con.style.display = 'block';
		}
	}

</script>
<link href="${pageContext.request.contextPath}static/css/bootstrap.min.css" rel="stylesheet" />
<link href='${pageContext.request.contextPath }static/css/fullcalendar.css' rel='stylesheet' />
<script src='${pageContest.request.contextPath }static/js/fullcalendar.js'></script>
<style>
h2 {
	color: var(- -bs-blue);
}

input {
	backgroundcolor: blue;
}
#calendar{
	width: 70%;
}
#but {
	position: relative;
	text-align: center;
	width: 100%;
	margin-top: 20px
}
#time{
display:none;
witdh: 20%;
}


</style>
</head>
<body>

	<div id="but">
		<span> 
		<input class="btn btn-primary" type="button"id="button1" value="병원찾기" onclick="location.href=''"> 
		<input class="btn btn-primary" type="button" id="button1" value="예방접종" onclick="location.href='/calendar/calendarhome'"> 
		<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href=''"> 
		<input class="btn btn-primary"type="button" id="button1" value="보험" onclick="location.href=''">
		<input class="btn btn-primary" type="button" id="button1" value="커뮤니티" onclick="location.href=''">
		</span>
	</div>
	<div id='calendar'></div>
	<a href="javascript:doDisplay();"></a><br/>
	<div id='time'>
			<a> 오전 </a><br/>
			<button id="btn">Button</button>
			<input type="button" value="10:00" onclick=''>
			<input type="button" value="10:30" onclick=''>
			<input type="button" value="11:00" onclick=''>
			<input type="button" value="11:30" onclick=''><br/>
			<a> 오후 </a><br/>
			<input type="button" value="13:00" onclick=''>
			<input type="button" value="13:30" onclick=''>
			<input type="button" value="14:00" onclick=''>
			<input type="button" value="14:30" onclick=''><br/>
			<input type="button" value="15:00" onclick=''>
			<input type="button" value="15:30" onclick=''>
			<input type="button" value="16:00" onclick=''>
			<input type="button" value="16:30" onclick=''><br/>
			<input type="button" value="17:00" onclick=''>
			<input type="button" value="17:30" onclick=''>
	</div>
	<br>
</body>
<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			height : '600px',
			expandRows : true,
			headerToolbar : {
				left : 'dayGridMonth,prev',
				center : 'title',
				right : 'today,next'
			},
			navLinks : true,
			editable : true,
			selectable : true,
			nowIndicator : true,
			dayMaxEvents : true,
			locale : 'ko',
			eventAdd : function(obj) {
				console.log(obj);
			},
			eventChange : function(obj) {
				console.log(obj);
			},
			eventRemove : function(obj) {
				console.log(obj);
			},
			select : function(arg) {
				var title = confirm('예약을 잡으실껀가용?');
				if (title) {
					doDisplay();
				}
			}
		});
		calendar.render();
	});
</script>
<script type="text/javascript">
const btn = document.getElementById('btn');
btn.addEventListener('click', function onClick() {
		btn.style.backgroundColor = 'yellow';
		btn.style.color = 'white';
		});
</script>
</html>