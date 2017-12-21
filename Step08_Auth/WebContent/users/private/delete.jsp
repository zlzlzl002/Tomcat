<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/private/delete.jsp</title>
</head>
<body>
<%
	// 기본적으로 선언 지역변수 L  out(출력 객체) =>jspWriter    request session
	
 	// 세션영역에 저장된 아이디를 읽어와서
 	String id =(String)session.getAttribute("id");
 	// DB 에서 삭제 
 	UsersDao.getInstance().delete(id);
 	session.invalidate(); // 세션 초기화 탈퇴정보 null값 없애기 위해서
 	// 응답한다
%>
<p><strong><%=id %></strong>님 탈퇴 했어 ㅡㅡ</p>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
</body>
</html>