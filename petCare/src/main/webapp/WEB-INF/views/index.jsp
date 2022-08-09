 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="/resources/css/index.css" rel="stylesheet"type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</head> 
<body>
<%@ include file="/WEB-INF/views/template/menu.jsp" %>
 
<!-- 	<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
        <li><a href="/map/hosMap"><img src="/resources/img/slide1.jpg"></a></li>
        <li><a href="/hos/vacc"><img src="/resources/img/slide2.jpg"></a></li>
        <li><a href="/pet/petInsuInfo"><img src="/resources/img/slide3.jpg"></a></li>
        <li><a href="/board/list"><img src="/resources/img/slide4.jpg"></a></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
    </div>
</div>   -->
<!-- 기존 코드는 주석처리하고 img src만 채워뒀습니다. -->

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
 
    <div class="carousel-item active">
     <a href="/map/hosMap"> <img src="/resources/img/slide1.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="/hos/vacc"><img src="/resources/img/slide2.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="/pet/petInsuInfo"><img src="/resources/img/slide3.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
     <a href="/board/list"><img src="/resources/img/slide4.jpg" class="d-block w-100" alt="..."></a>
    </div>
      
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</body>
</html> 