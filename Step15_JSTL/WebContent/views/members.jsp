<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원목록입니다</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
		</tr>
	</thead>
	<tboday>
		<c:forEach var="tmp" items="${list }">
		<tr> <!-- dto는  tmp.num 사용 -->
			<td>${tmp.num }</td>
			<td>${tmp.name}</td>
			<td>${tmp.addr }</td>
		</tr>
		</c:forEach>
	</tboday>
</table>
</body>
</html>