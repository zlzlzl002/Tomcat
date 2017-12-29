<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 if 문</title>
</head>
<body>
<% request.setAttribute("jumsu", 75); %>
<h3>다중 if 문을 taglib 로 구성해 보자</h3>

<!-- if(){
	 }else if(){
	 }else if(){
	 }else{ 
	 } -->
<c:choose>
	<c:when test="${jumsu ge 90 }"> <!-- ge >= -->
		<p>점수는 ${jumsu } 이고 성적은 A 입니다.</p>
	</c:when>
	
	<c:when test="${jumsu ge 80 }">
		<p>점수는 ${jumsu } 이고 성적은 B 입니다.</p>
	</c:when>
		
	<c:when test="${jumsu ge 70 }">
		<p>점수는 ${jumsu } 이고 성적은 C 입니다.</p>
	</c:when>
	
	<c:when test="${jumsu ge 60 }">
		<p>점수는 ${jumsu } 이고 성적은 D 입니다.</p>
	</c:when>
	<c:otherwise> <!-- 기본값 -->
		<p>점수는 ${jumsu } 이고 성적은 F 입니다.</p>
	</c:otherwise>
</c:choose>
</body>
</html>