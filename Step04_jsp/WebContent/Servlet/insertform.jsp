
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- charset=UTF-8 그래서 html문서 작성시 head부분에 
	이 html문서의 문자셋(=문자집합 : character set : charset)이 utf-8로 인코딩함을 표시 한다. 
--%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertform.jsp</title>
</head>
<body>
<p>회원정보 추가하기 </p>
<form action="/Servlet/insert.jsp" method="post">
<input type="hidden" name="num" id="num" />
<input type="text" name="name" id="name" />
<input type="text" name="addr" id="addr" />
<button type="submit">추가</button>
</form>
</body>
</html>