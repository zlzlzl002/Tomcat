<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup3/main.jsp</title>
<%
	boolean canPopup = true;
	Cookie[] cookies = request.getCookies();
	for (Cookie tmp : cookies) {
		if (tmp.getName().equals("popup")) {
			canPopup = false;
		}
	}
%>
</head>
<body>
	<%
		if (canPopup) {
	%>
	<script>
	<!-- 팝업 창 뛰우기 -->
		window.open("popup_page.jsp", "팝업",
				"width=500,height=500,top=100,left=100");
		//window.open("popup_pae2.jsp", "팝업2","width=500,height=500,top=100,right=100");
	</script>
	<%
		}
	%>
</body>
</html>