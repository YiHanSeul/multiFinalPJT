<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link href="/resources/css/front.css" type="text/css" rel="stylesheet"> 
<style type="text/css">


#container{
    height: 400px;
}
#left{
    width: 60%;
    height: 85%;
    float: left;
}
#right{
    width: 30%;
    height: 85%;
    float: right;
}
#header{
	background-color: rgb(180,200,150);
}
.up{
	margin: 2px;
	text-align: right;
}
.up1{
	margin-left: 15px;
	font-size: 20px;
}
</style>
<body>
 <div id="header">
        <div class="up"><a class="up1">�α���</a><a class="up1">ȸ������</a><a class="up1">������</a></div>
        <div>
            <span><a  >�޴�1</a></span>
            <span><a >�޴�2</a></span>
            <span><a >�޴�3</a></span>
            <span><a >�޴�4</a></span>
        </div>
    </div>
    
    <div id="container">
        <div id="left">
            <p>���� ���� ����</p>
        </div>
        <div id="right">
            <p>������ ���� ����</p>        
        </div>
    </div>

    <div id="footer">
        <p>copyright &copy; all rights reserved...</p>
    </div>
</body>
</html>