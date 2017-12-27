<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/showtime.jsp</title>
</head>
<body>
<%

	String time=(String)request.getAttribute("time");
%>
<p>현재시간 : <strong><%=time %></strong></p>
<p>현재시간 : <strong>${time }</strong></p> <!-- el 담긴key값으로 읽어올수 있다. -->
</body>
</html>