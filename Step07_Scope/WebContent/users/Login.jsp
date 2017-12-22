<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/Login.jsp</title>
</head>
<body>
<%
 	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	// 유효한 정보인지 여부
	boolean isValid=false;
	
	if(id.equals("gura") && pwd.equals("1234")){ // Session 페이지이동을 해도 로그인내용이 유지 
		// 세션 객체를 얻어와서 (클라이언트가 임의로 지우거나 웹닫았을때 request는 사라진다.) 
		HttpSession ses=request.getSession(); // <= 로그인정보는 Session 담는다.
		// 세션에 로그인 정보를 담는다. key , value
		ses.setAttribute("id",id);
		isValid=true;
	}
%>
<%if(isValid==true){%>
	<p><strong><%=id %></strong> 회원님 로그인 되었습니다.</p>	
<%}else{ %>
 	<p>아이디 혹은 비밀번호 틀려</p>
<%} %>
</body>
</html>