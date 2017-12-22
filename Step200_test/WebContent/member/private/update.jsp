<%@page import="test.dao.UsersDao"%>
<%@page import="test.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>private.update.jsp</title>
</head>
<body>
<%
	// id pwd email 읽어오기
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	
	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	
	UsersDao.getInstance().update(dto);
%>
<p><%=dto.getId() %> 회원님 정보를 수정 했습니다.</p>
<a href="info.jsp">확인</a>
</body>
</html>