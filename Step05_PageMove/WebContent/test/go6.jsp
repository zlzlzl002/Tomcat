<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("test/go6.jsp 요청 처리중....");

	// 아래와 같은 라다일렉트 이동을 javascript 를 로딩시켜서 이동시킬수 있다.
	// response.sendRedirect("result6.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/go6.jsp</title>
</head>
<body>
<script>
	alert("result6.jsp 페이지로 리다일렉트 이동 합니다.");
	// 자바스크립트에서 페이지 로딩 location.href="";
	location.href="result6.jsp"; // javascript 를 활용한 redirect 이동
</script>
</body>
</html>