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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href='${pageContext.request.contextPath }/resources/css/fullcalendar.css' rel='stylesheet' />
<script src='${pageContest.request.contextPath }/resources/js/fullcalendar.js'></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
a{
color:black !important;
}
#sel_option{
display: flex;
margin-right: 0;
padding-left: 10%;
position: relative;
}

#calendar{
	display: flex;
    flex-direction: column;
	margin-left: 10%;
	float: left;
	width: 55%;
	position: relative;
}

#but {
	position: relative;
	text-align: center;
	width: 100%;
	margin-top: 20px;
}
#time{
display: none;
witdh: 20%;
}
#ta{
display:none;
border: 0;
border-radius: 15px;
outline: none;
background-color: rgb(233, 233, 233);
resize:none;
width: 260px;
}
#context{
width: 100pt;
}
#CB{
text-align: center;
}
#SB{
width: 100pt;
height: 50pt;
margin-top: 3%;
}
body{
height:700pt;
}
#tb{
display: flex;
flex-direction: column;
width: 30%;
padding-top:1%;
padding-left: 10%;
margin-left: 50pt;
}

.search-top-container {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
   height: 120px;
   background: #FAFAD2;
   opacity: 0.7;
   margin-top:70pt;
}

@media(max-width:1030px){
	#sel_option{
		display:none;
	}
	#tb{
		display:none;
	}
	#calendar{
		margin-right:10%;
		margin-left:10%;
		width:80%;
	}
}

#dt{
	width:60%;
	border: 0;
  border-radius: 15px;
  outline: none;
  background-color: rgb(233, 233, 233);
}

#aaa{
width: 100%;
color : black;
font-size: medium;
text-align: center;
}
#aaa{
text-align: center;
}
#stt {
   font-size: 30pt !important;
   font-weight: bolder !important;
   opacity: 1 !important;
}
</style>
</head>
<body>
		
		<%@ include file="/WEB-INF/views/template/menu.jsp" %>
		<div class="menu" id="loginChk2"  style="display:none"></div>
		<div class="search-top-container">
 		<h3 class="title" id="stt">진료 상담 예약</h3>
		</div>
		
		<div id='calendar'></div>
		<a href="javascript:doDisplay();"></a><br/>
		<div id="time">
				<form action="/res/insertRes" method="get" onsubmit="doalert();">
					<input type="hidden" name="UserKey" value="${userinfo.userkey }">
					<input type="hidden" id="hn" name="HospitalName" value="">
					
					<table id="table">
						<tr>
							<td>
				      			<input type="hidden" id="bc" name="BookDate" value="">
				      		</td>
			      		</tr>
						<section id="sel_option">
						  <div id="sel1">
						    <div>
						      <div id="aaa"> 오전</div>
						      <input type="hidden" name="BookHour" id="abc" value="">
						      <button class="btn btn-warning" name="btn1" type="button" data-num="10:00" onclick="ResDblChk(select('10:00'));">10:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="10:30" onclick="ResDblChk(select('10:30'));;">10:30</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="11:00" onclick="ResDblChk()select('11:00');">11:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="11:30" onclick="ResDblChk()select('11:30');">11:30</button><br/><br/>
						      <div id="aaa"> 오후</div>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="12:00" onclick="ResDblChk(select('12:00'));">12:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="12:30" onclick="ResDblChk(select('12:30'));">12:30</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="13:00" onclick="ResDblChk(select('13:00'));">13:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="13:30" onclick="ResDblChk(select('13:30'));">13:30</button><br/><br/>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="14:00" onclick="ResDblChk(select('14:00'));">14:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="14:30" onclick="ResDblChk(select('14:30'));">14:30</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="15:00" onclick="ResDblChk(select('15:00'));">15:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="15:30" onclick="ResDblChk(select('15:30'));">15:30</button><br/><br/>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="16:00" onclick="ResDblChk(select('16:00'));">16:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="16:30" onclick="ResDblChk(select('16:30'));">16:30</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="17:00" onclick="ResDblChk(select('17:00'));">17:00</button>
						      <button class="btn btn-warning" name="btn1" type="button" data-num="17:30" onclick="ResDblChk(select('17:30'));">17:30</button><br/></br>
						    </div>
						  </div>
						</table>
						
						</section>
				
			     	<div id="tb">
					      	<tr>
					      		<th>반려견 견종</th></br>
					      	</tr>
					      	<tr>
					      		<td>
					      		<input type="text" id="dt" name="BookPetType" required>${dto.BookPetType }
					      		</br>
					      		</td>
					      	</tr>
					      	<tr>
						      	<th>방문목적</th>
						    </tr>
						    <tr>
						      	<td>
								<textarea rows="7" cols="34" id="ta" name="BookWhy" placeholder="방문하시는 이유나 강아지의 증상을 적어주세요." required>${dto.BookWhy }</textarea>
								<input class="btn btn-warning" type="submit" id="SB" disabled="disabled" value="예약하기">
								</td>
							</tr>
					</div>
				</form>
				
		
		
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
		var ta = document.getElementById('ta');
		
		if(time.style.display=='none'){
			time.style.display = 'block';
		}else{
			time.style.display = 'block';
		}
		if(ta.style.display=='none'){
			ta.style.display = 'block';
		}else{
			ta.style.display = 'block';
		}
	}
	
	function undoDisplay(){
		var time = document.getElementById('time');
		if(time.style.display=='block'){
			time.style.display = 'none';
		}else{
			time.style.display = 'none';
		}
	}
	let index = 0;
	$(function() {
		$("[name=btn1]").on('click', function() {
			$(this).css("backgroundColor", "navy");
		    $("[name=btn1]").not($(this)).css("backgroundColor", "orange");
		    const target = document.getElementById('SB');
	        target.disabled = true;
		    
			});
	
	});

	function doalert(){
		swal('예약 완료!',"예약 해주셔서 감사합니다.", 'success')
	}
	
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			height : '600px',
			expandRows : true,
			headerToolbar : {
				left : 'prev',
				center : 'title',
				right : 'next'
			},
			navLinks : true,
			editable : true,
			selectable : true,
			nowIndicator : true,
			dayMaxEvents : true,
			locale : 'ko',
			eventAdd : function(obj) {
			},
			eventChange : function(obj) {
			},
			eventRemove : function(obj) {
			},
			select : function(arg) {
				let today = new Date();
				if (arg) {
					BookDate = arg.startStr;
					let c = new Date(BookDate);
					let cc = c.toLocaleDateString();
					let ccc = cc.replaceAll(".", "");
					let a = parseInt(ccc.replaceAll(" ", ""));
					let bb = today.toLocaleDateString();
					let bbb = bb.replaceAll(".", "");
					let b = parseInt(bbb.replaceAll(" ", ""));
					console.log(a,b);
					console.log(a+b);
					if(a >= b){
					let str = document.getElementById("bc");
					str.setAttribute("value",BookDate);
					console.log("${hospitalinfo.hospitalName}");
					doDisplay();
					}
					else{
						undoDisplay();
						swal('예약 불가능',"예약 가능한 날짜를 선택해주세요!", 'error');
						
						
					}
				}
			}
		});
		calendar.render();
	});
	
	function ResDblChk(){
		var BookHour = $("#abc").val();
		var BookDate = $("#bc").val();
		var HosName = "<%=(String)session.getAttribute("HospitalName")%>";
		console.log(HosName);
        $.ajax({
            url:"/res/resCheck", //Controller에서 인식할 주소
            type:"post", //POST 방식으로 전달
            data:{"BH":BookHour, "BD":BookDate, "HN":HosName},
            success:function(cnt){
            	if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 예약 가능 
            		swal('예약 가능!', "예약 가능한 시간입니다", 'success');
            		const target = document.getElementById('SB');
            		target.disabled = false;
                } else { // cnt가 1일 경우 -> 예약 불가능
                	swal('예약 불가능!',"이미 예약 되어있는 시간입니다", 'error',{
                		buttons : {
                			confirm : {
                				text: '확인',
                				value : true
                			}
                		}
                	});
                    const target = document.getElementById('SB');
                    target.disabled = true;
                }
            },
        });
		
		};
	
</script>

</html>