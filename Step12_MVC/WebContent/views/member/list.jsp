<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/member/list.jsp</title>
</head>
<body>
<%
	// request 에 담긴 회원 목록을 얻어낸다
	List<String> list =(List<String>)request.getAttribute("list");
%>
<h3>회원 목록입니다.</h3>
<ul>
	<%for(String tmp:list) {%>
		<li><%=tmp %></li>
	<%} %>
</ul>
</body>
</html>