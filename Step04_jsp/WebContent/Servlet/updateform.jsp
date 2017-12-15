<%@page import="test.dto.MemberDto"%>
<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateform.jsp</title>
</head>
<body>
<% int num = Integer.parseInt(request.getParameter("num")); %>
<% MemberDto dto = MemberDao.getInstance().getData(num); %>

<h3>회원 정보 수정하기</h3>
<form action="update.jsp" method="post">
<input type="hidden" name="num" id="num"  value='<%=dto.getNum()%>'/>
<label for="name">이름</label>
<input type="text" name="name" id="name" value='<%=dto.getName() %>' />
<label for="addr">주소</label>
<input type="text" name="addr" id="addr" value='<%=dto.getAddr()%>'/>
<button type="submit">수정 버튼</button>
</form>
</body>
</html>