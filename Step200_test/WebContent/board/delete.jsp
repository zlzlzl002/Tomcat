<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/delet.jsp</title>
</head>
<body>
<%
	// 한글 인코딩  
	request.setCharacterEncoding("utf-8");
	// 1. GET 방식 파라미터를 전달되는 삭제할 회원의 번호 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	// 2. DB 에서 삭제하기
	BoardDao.getInstance().delete(num);
	// 3. 응답하기
%>
<h3>글정보 삭제했어요</h3>
<a href="list.jsp">글 목록가기</a>
</body>
</html>