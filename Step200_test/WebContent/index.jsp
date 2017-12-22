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
	// session 영억 아이디 값 가져오기
	String id=(String)session.getAttribute("id");
%>
<h3>인덱스 페이지 입니다.</h3>
<%if(id != null) {%>
	<p><a href="member/private/info.jsp"><%=id %>.. 님로그인중</p></a>
	<a href="member/logout.jsp">로그아웃</a>
	<a href="board/list.jsp">목록 보기</a>
	<a href="file/list.jsp">파일 올리기</a>
<%} %>
<ul>
	<li><a href="member/signup_form.jsp">회원가입</a></li>
	<li><a href="member/login_form.jsp?url=${pageContext.request.contextPath }/">로그인</a></li>
</ul>
</body>
</html>