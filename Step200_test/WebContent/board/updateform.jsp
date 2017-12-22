<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/updateform.jsp</title>
</head>
<body>
<%
	//1. GET 방식 파마미터로 전달되는 수정할 글의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));

	//2. 수정할 글의 정보를 DB 에서 SELECT 한다.
	BoardDto dto=BoardDao.getInstance().getData(num);
	//3. SELECT 된 글 정보를 form 에 출력하는 응답을 한다.
	
	String id =(String)session.getAttribute("id");
	
%>
<h3>글 수정 폼입니다.</h3>
<form action="update.jsp" method="post">
	<input type="hidden" name="num" value="<%=dto.getNum()%>"/>
	번호 <input type="text" value="<%=dto.getNum()%>" disabled/><br/>
	작성자 <input type="text" name="writer" 
				value="<%=id%>" disabled/><br/>
				<input type="hidden" name="writer" value="<%=id %>"/>
	제목 <input type="text" name="title" 
				value="<%=dto.getTitle()%>"/><br/>
				<!-- textarea value는 자식요소로 출력하면됨 -->
	내용 <textarea name="content" 
			cols="30" rows="10"><%=dto.getContent() %></textarea>
	<br/>
	<button type="submit">수정 확인</button>
</form>
</body>
</html>












