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
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel='stylesheet' />
<link href='${pageContext.request.contextPath }/resources/css/fullcalendar.css' rel='stylesheet' />
<script src='${pageContest.request.contextPath }/resources/js/fullcalendar.js'></script>
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
.it_btn{
	background-color: skyblue;
}
.btn{
	background-color: skyblue;
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
		<section id="sel_option">
		  <ul>
		    <li class="opt_list">
		      <a> 오후</a><br/>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" class="btn1" type="button" data-num="10:00">10:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" class="btn1" type="button" data-num="10:30">10:30</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="11:00">11:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="11:30">11:30</button><br/>
		      <a> 오후</a><br/>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="12:00">12:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="12:30">12:30</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="13:00">13:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="13:30">13:30</button><br/>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="14:00">14:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="14:30">14:30</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="15:00">15:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="15:30">15:30</button><br/>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="16:00">16:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="16:30">16:30</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="17:00">17:00</button>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="17:30">17:30</button><br/>
		      <input class="it_num" type="hidden" value="0">
		      <button class="it_btn" name="btn1" type="button" data-num="15:00">18:00</button>
		    </li>
		  </ul>
		</section>
	</div>
	<div>
	<button id="print">num print<br/>
	</div>
	<input type="textarea">
	<br>

</body>
<script type="text/javascript">
	function doDisplay(){
		var con = document.getElementById("time");
		if(con.style.display=='none'){
			con.style.display = 'block';
		}else{
			con.style.display = 'block';
		}
	}
	let index = 0;
    colors = ['yellow', 'skyblue'];
	$(function() {
	$('.it_btn').on('click', function() {
	    num = $(this).data('num');    
	    $(this).closest('li').find('.it_num').val(num);
	    console.log(num);
	    $(this).css("backgroundColor", colors[index]);
	    $(this).css("Color", "transparent");
	    $('.it_btn').not($(this)).css("backgroundColor", "skyblue");
	    index = index >= colors.length - 1 ? 0 : index + 1;
	});
	
	});

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
					selectedDate = 
					doDisplay();
				}
			}
		});
		calendar.render();
	});

</script>

</html>