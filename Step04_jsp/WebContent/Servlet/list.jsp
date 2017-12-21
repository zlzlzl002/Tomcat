<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<link rel="stylesheet" href="/Step04_jsp/css/bootstrap.css" />
</head>
<body>
	<%
		List<MemberDto> list = MemberDao.getInstance().getList();
	%>
	<h3>회원 목록 불러오기</h3>
	<table>
	<a href="insertform.jsp">회원 정보 추가하기</a>
	<a href="index.html">인덱스가기</a>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>삭제</th>
				<th>수정</th>
			</tr>
		</thead>
		<tbody>
			<% for (MemberDto tmp : list) {%>
			<tr>
				<td><%=tmp.getNum()%></td>
				<td><%=tmp.getName()%></td>
				<td><%=tmp.getAddr()%></td>
										<!-- 파라미터 값 -->
				<td><a class="btn btn-danger btn-sm" href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				<td><a class="btn btn-success btn-sm" href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>