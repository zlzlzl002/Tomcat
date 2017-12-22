<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>play.jsp</title>
</head>
<body>
<%
	// session 에 담긴 애용을 읽어온다. jsp 에서는 session 을 바로 사용할수있다  request 안해도
	String id=(String)session.getAttribute("id");
%>
<%if(id==null) {%>
	<a href="users/Loginform.jsp">로그인</a>
<%}else{ %>
	<p><strong><%=id %></strong> 회원님 로그인중...</p>
<%} %>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
</body>
</html>