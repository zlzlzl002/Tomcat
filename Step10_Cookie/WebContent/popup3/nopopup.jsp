<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup3/nopopup.jsp</title>
</head>
<body>
<%
	// chk 라는 파라미터명 값을 확인
	String chk = request.getParameter("chk");
	
	// 만일체크 박스를 닫고 창을 닫았다면
	if( chk != null){
		Cookie cookie = new Cookie("popup","chk");
		// 쿠키를 초단위 결정
		cookie.setMaxAge(60);
		// 응답할때 쿠키가 같이 응답되도록 
		response.addCookie(cookie);
	}
%>
<script>
	//쿠키를 응답한 다음 팝업창이 자동으로 닫아 지도록
	self.close();
</script>
</body>
</html>