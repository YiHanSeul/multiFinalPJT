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
#textarea{
display:none;
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
			<form action="/res/insertRes" method="get">
				<input type="hidden" name="UserKey" value="${userinfo.userkey }">
				<input type="hidden" name="HospitalKey" value="${hospitalinfo.hospitalKey }">
				<table>
				<tr>
					<section id="sel_option">
					  <ul>
					    <li class="opt_list">
					      <a> 오후</a><br/>
					      <input type="hidden" name="BookHour" id="abc" value="">
					      <button class="it_btn" name="btn1" type="button" data-num="10:00" onclick="select('10:00');">10:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="10:30" onclick="select('10:30');">10:30</button>
					      <button class="it_btn" name="btn1" type="button" data-num="11:00" onclick="select('11:00');">11:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="11:30" onclick="select('11:30');">11:30</button><br/>
					      <a> 오후</a><br/>
					      <button class="it_btn" name="btn1" type="button" data-num="12:00" onclick="select('12:00');">12:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="12:30" onclick="select('12:30');">12:30</button>
					      <button class="it_btn" name="btn1" type="button" data-num="13:00" onclick="select('13:00');">13:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="13:30" onclick="select('13:30');">13:30</button><br/>
					      <button class="it_btn" name="btn1" type="button" data-num="14:00" onclick="select('14:00');">14:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="14:30" onclick="select('14:30');">14:30</button>
					      <button class="it_btn" name="btn1" type="button" data-num="15:00" onclick="select('15:00');">15:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="15:30" onclick="select('15:30');">15:30</button><br/>
					      <button class="it_btn" name="btn1" type="button" data-num="16:00" onclick="select('16:00');">16:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="16:30" onclick="select('16:30');">16:30</button>
					      <button class="it_btn" name="btn1" type="button" data-num="17:00" onclick="select('17:00');">17:00</button>
					      <button class="it_btn" name="btn1" type="button" data-num="17:30" onclick="select('17:30');">17:30</button><br/>
					      <button class="it_btn" name="btn1" type="button" data-num="15:00" onclick="select('18:00');">18:00</button>
					      <input type="button" value="가능확인" onclick="ResDblChk();" ><br/>
					    </li>
					  </ul>
					</section>
				</tr>
					<td>
		      		<input type="hidden" id="bc" name="BookDate" value="">
		      		</td>
		      	<tr>
		      		<th>반려견 견종</th>
		      		<td>
		      		<input type="text" type="text" name="BookPetType">${dto.BookPetType }
		      		</td>
		      	</tr>
		      	<tr>
			      	<th>방문목적</th>
			      	<td>
					<textarea class="hide" rows="5" cols="100" id="textarea" name="BookWhy" placeholder="방문하시는 이유나 강아지의 증상을 적어주세요.">${dto.BookWhy } </textarea>
					<input type="submit" id="SB" disabled="disabled" value="예약하기">
					</td>
				<tr/>
			</table>
			</form>
		</div>
		<div>
		</div>
	<br>

</body>
<script type="text/javascript">
	
	
	
	function select(a){
		let str = document.getElementById("abc");
		str.setAttribute("value",a);
	}
	
	function doDisplay(){
		var time = document.getElementById('time');
		var text = document.getElementById('textarea');
		if(time.style.display=='none'){
			time.style.display = 'block';
		}else{
			time.style.display = 'block';
		}
		if(text.style.display=='none'){
			text.style.display = 'block';
		}else{
			text.style.display = 'block';
		}
	}
	let index = 0;
    colors = ['yellow', 'skyblue'];
	$(function() {
	$('.it_btn').on('click', function() {
	    bookh = $(this).data('num');
	    $(this).closest('li').find('.it_num').val(bookh);
	    $(this).css("backgroundColor", colors[index]);
	    $(this).css("Color", "transparent");
	    $('.it_btn').not($(this)).css("backgroundColor", "skyblue");
	    index = index >= colors.length - 1 ? 0 : index + 1;
	    const target = document.getElementById('SB');
        target.disabled = true;
	    
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
					BookDate = arg.startStr;
					let str = document.getElementById("bc");
					str.setAttribute("value",BookDate);
					doDisplay();
				}
			}
		});
		calendar.render();
	});
	
	function ResDblChk(){
		var BookHour = $("#abc").val();
		var BookDate = $("#bc").val();
        $.ajax({
            url:"/res/resCheck", //Controller에서 인식할 주소
            type:"post", //POST 방식으로 전달
            data:{"BH":BookHour, "BD":BookDate},
            success:function(cnt){
            	if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 예약 가능 
            		alert("예약이 가능합니다")
            		const target = document.getElementById('SB');
            		target.disabled = false;
                } else { // cnt가 1일 경우 -> 예약 불가능
                    alert("이미 예약된 시간입니다.")
                    const target = document.getElementById('SB');
                    target.disabled = true;
                }
            },
        });
		
	}
	
</script>

</html>