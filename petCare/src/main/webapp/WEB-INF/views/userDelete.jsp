<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 구현</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
    $(document).ready(function() {
        let message = "[[${msg}]]";
        if (message != "") {
            alert(message);
        }else {
        }
    })
</script>
</head>
<body>
<form action="/user/delete" method="get">
비밀번호를 입력해주세요. <input type="text" name="userpw">
<input type="submit" value="회원탈퇴">

</form>
</body>
</html>