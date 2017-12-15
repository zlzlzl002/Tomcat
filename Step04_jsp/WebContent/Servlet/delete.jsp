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
<% int num = Integer.parseInt(request.getParameter("num")); %>
<% MemberDao.getInstance().delete(num);%>
</body>
<script>
	alert("삭제 했습니다.");
	location.href="list.jsp";
</script>

</html>