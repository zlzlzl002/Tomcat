<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/member/alert.jsp</title>
</head>
<body>
<%
	String msg=(String)request.getAttribute("msg");
	String url=(String)request.getAttribute("url");
	
	String id=(String)session.getAttribute("id");
%>
<p><%=msg %></p>                    <!-- url => /member/list.do -->
<p><strong><%=id %></strong>로그인</p>
<a href="${pageContext.request.contextPath }<%=url%>">확인</a>
</body>
</html>