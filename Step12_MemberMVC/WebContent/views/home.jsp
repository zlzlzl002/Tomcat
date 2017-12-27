<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/home.jsp</title>
</head>
<body>
<h3>인덱스 페이지 입니다.</h3>
<ul>
	<li><a href="member/list.do">회원 목록보기</a></li>
	<li><a href="users/loginform.do">로그인 하기</a></li>
</ul>
<%
	// HomeAction 에서 request 에 담은 Model 읽어오기 
	List<String> news=(List<String>)request.getAttribute("news");
%>
<%
	
	String id=(String)session.getAttribute("id");
%>                 <!-- url => /member/list.do -->
<p><strong><%=id %></strong>로그인</p>

<h3>공지사항</h3>
<ul>
	<%for(String tmp:news){ %>
		<li><%=tmp %></li>
	<%} %>
</ul>
</body>
</html>














