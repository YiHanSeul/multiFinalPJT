<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta charset="utf-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
 
</head>
  <body class="bg-light">
<br>
<main class="container">
  <div class="d-flex align-items-center p-3 my-3 bg-purple rounded shadow-sm">
 
    <div class="lh-1">
      <h1>
      
     
      
      내정보 수정</h1>
      
    </div>
    
  </div>
<br>
  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h5 class="border-bottom pb-2 mb-0">Recent updates</h5><br>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false">
      <rect width="100%" height="100%" fill="#007bff"/></svg>

      <p class="pb-3 mb-0 small lh-sm border-bottom">
      
        <strong class="d-block text-gray-dark">@usernick
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <form action="/user/userMypageRes" method="get">
	<input type="text" placeholder="바꿀 닉네임을 입력해주세요. [기존 닉네임: ${dto.usernick } ]" name="usernick" style="width: 450px">&nbsp;
	<input type="submit" value="수정" class="btn btn-primary btn-sm">
</form>
	</strong>

      </p>

    </div>
    <br>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#61cc4b"/></svg>

      <p class="pb-3 mb-0 small lh-sm border-bottom">
        <strong class="d-block text-gray-dark">@useremail
        &nbsp;&nbsp;&nbsp;&nbsp;
              <form action="/user/userMypageRes" method="get">
		<input type="text" placeholder="바꿀 이메일을 입력해주세요. [기존 이메일: ${dto.useremail } ]" name="useremail" style="width:450px">&nbsp;
		<input type="submit" value="수정" class="btn btn-success btn-sm">
	</form>
       </strong>
      </p>
    </div>
    <br>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false">
      
      <rect width="100%" height="100%" fill="#ff3232"/></svg>

      <p class="pb-3 mb-0 small lh-sm border-bottom">
        <strong class="d-block text-gray-dark">@userphone
        &nbsp;&nbsp;&nbsp;
              <form action="/user/userMypageRes" method="get">
	<input type="text" placeholder="바꿀 전화번호를 입력해주세요. [기존 전화번호: ${dto.userphone } ]" name="userphone" style="width:450px">&nbsp;
	<input type="submit" value="수정" class="btn btn-danger btn-sm">
</form>
      </strong>
      </p>
    </div>
    <small class="d-block text-end mt-3">
      <a href="javascript:window.history.back();" class="btn btn-warning btn-sm">뒤로가기</a>
    </small>
  </div>


 
    
</main>


</body>
</html>