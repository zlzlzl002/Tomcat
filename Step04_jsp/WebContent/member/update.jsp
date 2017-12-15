	<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
 <%  request.setCharacterEncoding("utf-8"); %>
<% int num=Integer.parseInt(request.getParameter("num")); %>
	

<% String name=request.getParameter("name"); %>
<% String addr=request.getParameter("addr"); %>

<% MemberDto dto = new MemberDto(num,name,addr); %> 
<% MemberDao.getInstance().update(dto); %> 
<p>수정 했어요</p>
<a href="list.jsp">목록 돌아가기</a>

</body>
</html>