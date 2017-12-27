<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fortune.jsp</title>
</head>
<body>
<%
	// 비즈니스 로직의 수행결과로 얻어진 오늘의 운세라고 가정하자~
	String fortuneToday="동쪽으로 가면 귀인을 만나요~";
%>
<p>오늘의 운세: <strong><%=fortuneToday%></strong></p>
</body>
</html>