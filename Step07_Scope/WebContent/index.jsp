<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h3>!! Scope(영역) 테스트</h3>
 <ul>
 	<!-- request => .setAttribute("key",value) 저장
 					.getAttribute("key") 갖고오기
 					
 		 session => .setAttribute("key",value) 저장
 					.getAttribute("key") 갖고오기 -->
 	<li><a href="member/showdata?num=1">request scope 테스트</a></li>
 	<li><a href="users/Loginform.jsp">session scope 테스트</a></li>
 	<li><a href="play.jsp">놀러가기</a></li>
 	<li><a href="users/memberLoginform.jsp">session scope 테스트2</a></li>
 </ul>
</body>
</html>