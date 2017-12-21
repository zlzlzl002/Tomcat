<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users.signup.jsp</title>
</head>
<body>
<% 	
	// 1. 폼 전송되는 내용을 읽어와서
	
	// EncodingFilter 객체가 인코딩 설정을 하기 때문에 필요 없음
	//request.setCharacterEncoding("utf-8");

	String id =request.getParameter("id");
	String pwd= request.getParameter("pwd");
	String email= request.getParameter("email");
	
	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setEmail(email);
	dto.setPwd(pwd);
	// 2. DB 에 저장하기
	UsersDao.getInstance().insert(dto);
	
	// 3. 응답하기
%>
<p><strong><%=id %> 회원님 가입 되었습니다.</strong></p>
<!--  절대 경로  -->
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
</body>
</html>