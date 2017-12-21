<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<%
	// 세션 영역에 "id" 라는 키값으로 저장된 값이 있는지 불러오기
	String id=(String)session.getAttribute("id"); 
	
	
%>
<!-- Auth 인증 -->
<h3>인덱스 페이지 입니다.</h3>
<%if(id !=null){ %>
	<p><a href="users/private/info.jsp"><%=id %></a>님 로그인중 ...</p>
	<a href="users/logout.jsp">로그아웃</a>
<%} %>
<ul>
	<li><a href="users/signup_form.jsp">회원가입</a></li>
											<!-- 로그인 성공 index.jsp 가기 -->
	<li><a href="users/login_form.jsp?url=${pageContext.request.contextPath }/">로그인</a></li>
	<li><a href="users/private/info.jsp">로그인 하지 않으면 갈수 없는곳</a></li>
	<li><a href="member/play1.jsp">놀러가기1</a></li>
	<li><a href="member/play2.jsp">놀러가기2</a></li>
</ul>
</body>
</html>