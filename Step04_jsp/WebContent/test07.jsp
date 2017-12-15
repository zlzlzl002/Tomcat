<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test07.jsp</title>
</head>
<body>
<% 
	// 조건부로 다른 내용의 javascript 불러오기
	boolean is=false;
%>
<script>
	<%if(is) {%>
		alert("111");
	<%}else{%>
		alert("222");
	<%}%>
</script>
</body>
</html>