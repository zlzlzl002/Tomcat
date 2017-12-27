<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginform.jsp</title>
</head>
<body>
<%
	//로그인후 리다일렉트 이동할 url 주소를 읽어온다
	String url =request.getParameter("url");
	if(url==null){// 만일 없으면
		// 인덱스 페이지로 이동 될수 있도록
		url=request.getContextPath();
	}
	
%>
<form action="login.do?url=<%=url %>" method="post">
	아이디: <input type="text" name="id"/>
	비밀번호: <input type="text" name="pwd"/>
	<button type="submit">로그인</button>
</form>
</body>
</html>