<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insert.jsp" method="post">
<input type="hidden" name="num" id="num" />
<label for="name">이름</label>
<input type="text" name="name" id="name" />
<label for="addr">주소</label>
<input type="text" name="addr" id="addr" />
<button type="submit">전송</button>
</form>
</body>
</html>