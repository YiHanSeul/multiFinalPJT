<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
   $(function(){
	let res = ${res};
	console.log(res);
 	console.log(res.images[0].fields[0].inferText);
	console.log(res.images[0].fields[1].inferText);
	for(let i=0; i<res.images[0].fields.length; i++){
		$("div").append("<p>"+res.images[0].fields[i].inferText+"</p>")
	}
	
	const fileInput = $("#fileUpload").get(0);
	console.log(fileInput);
	fileInput.onchange = () => {
		  const selectedFile = fileInput.files[0];
		  console.log(selectedFile);
		};
}); 
  
</script>
</head>
<body>
<!-- 	<img alt="img01" src="/resources/img.png"> -->
	<div></div>
		<form action="/hos/imgTest">
		<input type="file" name="imgFile"  id="fileUpload" >
		<input type="submit" value="전송">
		</form> 	
</body>
</html>