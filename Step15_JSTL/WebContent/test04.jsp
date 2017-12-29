<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04.jsp</title>
</head>
<body>
<h3>jstl 의 if 문</h3>
<!-- test="" true문 조건이 수행한다 -->
<c:if test="true">
	<p>출력됨</p>
</c:if>

<c:if test="false">
	<p>출력됨2</p>
</c:if>

<c:if test="${10 gt 2 }">  <!-- gt =  > -->
	<p>10 은 2보다 커요</p>
</c:if>

<c:if test="${10 lt 2 }">  <!-- lt =  < -->
	<p>10은 2보다 작아요</p>
</c:if>
</body>
</html>