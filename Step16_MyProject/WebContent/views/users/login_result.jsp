<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/users/login_result.jsp</title>
</head>
<body>

<c:choose>
	<c:when test="${isValid }" > <!-- isValid true or false -->
 		<p><strong>${id }</strong>성공</p>
		<a href="${url }">확인</a>
		${isValid }
	</c:when>
	<c:otherwise>
		<p>아디디 혹은 비밀번호 확인해주세요</p>
		<a href="login_form.do?url=${url }">로그인 다시하기</a>
	</c:otherwise>
</c:choose>
</body>
</html>












