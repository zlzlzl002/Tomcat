<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert.jsp</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<!-- 사용빈도 낮음  -->
<p> post 방식 파라미터로 전달된 msg : 
	<strong>${param.msg }</strong></p>
</body>
</html>