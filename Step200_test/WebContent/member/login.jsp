<%@page import="test.dto.UsersDto"%>
<%@page import="test.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/login.jsp</title>
</head>
<body>
<%
	// 파라미터 값으로 id pwd 값얻어오고
	String id = request.getParameter("id");
	String pwd= request.getParameter("pwd");
	
	// UsersDto 에 담고
	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	
	// 유효한 정보인지
	boolean isValid=UsersDao.getInstance().isValid(dto);
	
	// 로그인 성공후 이동 주소
	String url=request.getParameter("url");
%>

<%if(isValid) {
	session.setAttribute("id", id);
	%>
	<p><strong><%=id %></strong> 님 로그인 중..</p>
	<a href="<%=url%>">인덱스로 가기</a>
<%}else{ %>
	<p>아이디와 비밀번호를 확인해 주세요</p>
	<a href="login_form.jsp?url=<%=url%>">로그인</a>
<%} %>
</body>
</html>