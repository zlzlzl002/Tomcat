<%@page import="test.dto.UsersDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/isnert.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id= (String)session.getAttribute("id");
	// 폼 전송되는 애용을 읽어내서
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	// DB 에 저장한다
	BoardDto dto = new BoardDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	
	BoardDao.getInstance().insert(dto);
%>
<h3>새글 정보를 추가했어요</h3>
<a href="list.jsp">목록 보기</a>
</body>
</html>