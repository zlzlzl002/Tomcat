<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert.jsp</title>
</head>
<body>
<% 
   // 폼 전송되는 내용을 추출해서
   String name=request.getParameter("name");
   String addr=request.getParameter("addr");
   
   //MemberDto 에 담아서
   MemberDto dto = new MemberDto();
   dto.setName(name);
   dto.setAddr(addr);
   //MemberDao 객체를 이용해서 저장한다.
   MemberDao.getInstance().insert(dto);
%>
<p3>회원정보를 추가 했습니다.</p3>
<a href="list.jsp">목록가기</a>
</body>
</html>