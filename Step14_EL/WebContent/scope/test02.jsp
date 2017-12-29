<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope.test02.jsp</title>
</head>
<body>
<%
	MemberDto dto =new MemberDto(1,"김구라","노량진");
	// request 영역에 MemberDto type 저장하기
	request.setAttribute("dto", dto);
%>
<h3>el 테스트</h3>
<p>번호 :<strong>${requestScope.dto.num }</strong></p> <!-- dto.필드명 -->
<p>이름 :<strong>${dto.name }</strong></p>
<p>주소 :<strong>${dto.addr }</strong></p>

<h3>위에 코드와 비교 java code</h3>
<%
	MemberDto dto2 =(MemberDto)request.getAttribute("dto");
%>
<p>번호: <%=dto2.getNum() %></p>
<p>번호: <%=dto2.getName() %></p>
<p>번호: <%=dto2.getAddr() %></p>
</body>
</html>