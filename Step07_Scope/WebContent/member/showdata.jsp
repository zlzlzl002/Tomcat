<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/showdata.jsp</title>
</head>
<body>
<!-- link 누르면 index.jsp => /member/showdata (forward 응답위임) => member/showdata.jsp 
							-->
<%
	// request 영억에 담긴 데이터를 읽어온다.
	// MemberDto dto = xxxx   (MemberDto)
	// request.setAttribute("dto",dto) 
	MemberDto dto =(MemberDto)request.getAttribute("dto");
%>
<p>번호 : <strong><%=dto.getNum() %></strong></p>
<p>이름 : <strong><%=dto.getName() %></strong></p>
<p>주소 : <strong><%=dto.getAddr() %></strong></p>
</body>
</html>