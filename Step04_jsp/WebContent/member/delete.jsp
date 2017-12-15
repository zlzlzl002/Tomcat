
<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
</head>
<body>
<% int num =Integer.parseInt(request.getParameter("num")); %>
<% MemberDao.getInstance().delete(num); %>
<h3>회원 정보를 삭제 했어요</h3>
<a href="list.jsp">회원정보 목록 가기</a>
</body>
</html>