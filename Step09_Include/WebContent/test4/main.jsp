<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test4/main.jsp</title>
<style>
	.header{
		height:100px;
		background-color: yellow;
	}
	
	.footer{
		height:100px;
		background-color: pink;
	}
</style>
</head>
<body>
<!-- jsp:include 를 많이 쓰임 (header / main / footer 공동으로 응답함) -->
<jsp:include page="header.jsp"></jsp:include>
<div class="main">
	<h3>메인 컨텐츠 입니다.</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>