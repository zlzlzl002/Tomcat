<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateform.jsp</title>
</head>
<body>
<%
	// 수정할 회원의 번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	// 회원정보를 읽어온다 Dto,dao 를 이용해서
	MemberDto dto = MemberDao.getInstance().getData(num); 
%>

<!-- 회원 정보 수정 폼 -->
<form action="update.jsp" method="post">
<input type="hidden" name="num" id="num" value='<%=dto.getNum() %>'/>
<label for="name">이름</label>
<input type="text" name="name" id="name" value='<%=dto.getName() %>'/>
<label for="addr">주소</label>
<input type="text" name="addr" id="addr" value='<%=dto.getAddr() %>' />
<button type="submit">전송</button>
</form>
</body>
</html>