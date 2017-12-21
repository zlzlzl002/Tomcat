<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/update.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	// 1. 폼 전송되는 수정할 글의 정보를 읽어와서
	int num = Integer.parseInt(request.getParameter("num"));
	String writer= request.getParameter("writer");
	String title= request.getParameter("title");
	String content= request.getParameter("content");
	// 수정할글 정보를 BoardDto에 담기
	BoardDto dto = new BoardDto();
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	// 2. DB 에 반영하고
	BoardDao.getInstance().update(dto);
	
	// 3. 응답한다.
%>
<h3>수정했다</h3>
<a href="list.jsp">list 돌아가기</a>
</body>
</html>