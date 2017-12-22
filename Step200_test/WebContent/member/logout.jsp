<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/logout.jsp</title>
</head>
<body>
<%
	//세션 영역에 id 라는 키값으로 저장된값
	session.removeAttribute("id");
%>
<script>
	alert("로그 아웃 되었습니다.");
	location.href="${pageContext.request.contextPath}/";
</script>
</body>
</html>