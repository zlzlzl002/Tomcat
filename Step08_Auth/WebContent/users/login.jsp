<%@page import="javax.websocket.Session"%>
<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/login.jsp</title>
</head>
<body>
<%
	// 1. 폼전송되는 아이디 비밀번호를 읽어와서
	String id= request.getParameter("id");
	String pwd= request.getParameter("pwd");
	
	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	// 2. 유효한 정보인지 확인해서
	boolean isValid=UsersDao.getInstance().isValid(dto);
	// 3. 로그인 성공후 이동할 주소
	String url=request.getParameter("url");
	// 4. 응답
%>
<%if (isValid) {
	// 세션에 로그인 정보를 담는다
	session.setAttribute("id", id);
	// session.removeAttribute(arg0)  <= 로그아웃 세션
	%>
	<p><strong><%=id %></strong> 회원님 로그인 되었습니다.</p>
	<a href="<%=url%>">확인</a>
<%}else{ %>
	<p>아이디 혹은 비밀번호가 틀려요</p>
	<a href="login_form.jsp?url=<%=url%>"> 로그인 폼으로 돌아가기</a>
<%} %>
<a href="${pageContext.request.contextPath}/">인덱스로 가기</a>
</body>
</html>