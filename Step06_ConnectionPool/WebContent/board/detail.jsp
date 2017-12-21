<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/detail.jsp</title>
</head>
<body>
<%
	//1. 피라미터로 전달되는 그르이 번호를 읽어와서
	int num =Integer.parseInt(request.getParameter("num"));
	// 2. DB 에서 해당 글의 정보를 읽어와서
	BoardDto dto = BoardDao.getInstance().getData(num);

%>
<h3><%=num %>번 글의 정보 입니다.</h3>
<p>작성자 : <strong><%=dto.getWriter() %></strong></p>
<p>제목 : <strong><%=dto.getTitle() %></strong></p>
<p>내용</p>
<textarea cols="30" rows="10"><%=dto.getContent() %></textarea>
<p>작성일: <strong><%=dto.getRegdate() %></strong></p>
<a href="updateform.jsp?num=<%=dto.getNum()%>">수정</a>
<a href="delete.jsp?num=<%=dto.getNum()%>">삭제</a>
<a href="javascript:isDelete()">삭제</a>
<script>
	function isDelete(){
		var result=confirm("삭제 하시겠습니까?");
		if(result){// 확인 버튼이 눌렀을때 삭제 되도록 한다.
			location.href="delete.jsp?num=<%=dto.getNum()%>";
		}
	}
</script>
</body>
</html>