<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02.jsp</title>
</head>
<body>
<%
	List<String> list= new ArrayList<>();
	list.add("김구라");
	list.add("해골");
	list.add("원숭이");
	
	request.setAttribute("friends", list);
%>

<h3>친구 목록 입니다.</h3>
<ul> <!-- EL 확장 for문 사용법  -->
	<c:forEach var="tmp" items="${friends }" >
		<li>${tmp }</li>
	</c:forEach>
</ul>
</body>
</html>