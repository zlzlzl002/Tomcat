<%@page import="test.dao.UsersDao"%>
<%@page import="test.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/signup.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd= request.getParameter("pwd");
	String email= request.getParameter("email");
	
	UsersDto dto =  new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
			
	UsersDao.getInstance().insert(dto);
%>

<p><strong><%=id %></strong> 님 회원가입 축하드려요~</p>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
</body>
</html>