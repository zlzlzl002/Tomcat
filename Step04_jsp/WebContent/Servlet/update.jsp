<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); 
   response.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<!-- update 회원정보 불러오기  -->
<% int num =Integer.parseInt(request.getParameter("num")); %>
<% String name=request.getParameter("name"); %>
<% String addr=request.getParameter("addr"); %>
<% // MemberDto 에 담아서
	MemberDto dto = new MemberDto(num,name,addr); %>
<% // DB에 저장하기
	MemberDao.getInstance().update(dto); %>

<h3>회원 정보 수정하기</h3>
<a href="list.jsp">리스트로가기</a>
</body>
</html>