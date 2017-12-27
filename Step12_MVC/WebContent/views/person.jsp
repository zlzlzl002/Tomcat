<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/person.jsp</title>
</head>
<body>
<%
	//String personToday=(String)request.getAttribute("personToday ");
%>
<p>오늘의 인물: <strong>${personToday }</strong></p>
</body>
</html>