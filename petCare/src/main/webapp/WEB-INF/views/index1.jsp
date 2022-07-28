<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.sample-class .side-menu{
    position: absolute;
    top: 0;
    width:250px;
    left:-250px;
    height: 100%;
    background: #85a3dc;
    padding:20px;
    transform:translate(0,0);
    transition:transform 300ms cubic-bezier(0.4, 0, 0.2, 1);
}
.sample-class.menuon .side-menu{
    transform:translate(250px,0);
    box-shadow: 1px 1px 10px 0 rgba(0,0,0,0.3);
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
    $(".sample-class .btn-menu").on("click",function(){
        $(".sample-class").toggleClass("menuon");
    });
});
</script>
</head>
<body>
<div class="sample-area sample-class">
  <div class="head">
    <div class="btn-menu">
      <i class="fas fa-bars"></i>
    </div>
  </div>
  <div class="side-menu">
    <div class="menu-body">
      <span>메뉴</span>
    </div>
    <div class="btn-menu">
      <i class="fas fa-times"></i>
    </div>
  </div>
</div>
</body>
</html>