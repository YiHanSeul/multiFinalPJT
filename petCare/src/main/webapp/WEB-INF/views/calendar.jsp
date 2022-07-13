<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link href='${pageContext.request.contextPath }/resources/fullcalendar/main.css' rel='stylesheet' />
    <script src='${pageContest.request.contextPath }/resources/fullcalendar/main.js'></script>
<style>
h2{
  color: var(--bs-blue);
}
input {
	backgroundcolor : blue;
}
#but{
	position: relative;
	text-align: center;
	width: 100%;
	margin-top: 20px
}
</style>
</head>
<body>
	
	<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="병원찾기" onclick="location.href=''">
			<input class="btn btn-primary" type="button" id="button1" value="예방접종" onclick="location.href='/calendar/calendarhome'">
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href=''">
			<input class="btn btn-primary" type="button" id="button1" value="보험" onclick="location.href=''">
			<input class="btn btn-primary" type="button" id="button1" value="커뮤니티" onclick="location.href=''">
		</span>
	</div>
	<div id='calendar'></div><br>
</body>
    <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          height: '600px',
          expandRows: true,
          headerToolbar: {
        	left: 'dayGridMonth,prev',
        	center: 'title',
        	right: 'today,next'
          },         
          navLinks: true,
          editable: true,
          selectable: true,
          nowIndicator: true,
          dayMaxEvents: true,
          locale: 'ko'  ,
          eventAdd: function(obj){
        	  console.log(obj);
          },
          eventChange: function(obj){
        	  console.log(obj);
          },
          eventRemove: function(obj){
        	  console.log(obj);
          },
          select: function(arg){
        	 var title = confirm('예약을 잡으실껀가용?');
        	 if(title){
        		 location.href='/exuser/exuserhome';
        	 }
          }
        });
        calendar.render();
      });
    </script>
</html>