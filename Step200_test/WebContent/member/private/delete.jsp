<%@page import="test.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>private/delet.jsp</title>
</head>
<body>
<%
	// 세션 id 읽어오기
	String id= (String)session.getAttribute("id");

	// DB 에서 삭제
	UsersDao.getInstance().delete(id);
	// 세션 초기화  null값 없애기위해서
	session.invalidate();
%>
<p><strong><%=id %></strong>님 탈퇴 했어 ㅡㅡ</p>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
</body>
</html>