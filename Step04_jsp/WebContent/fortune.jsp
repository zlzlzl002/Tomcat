<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- FortuneServlet.java => FortuneServlet.class 
	 
	 fortune.jps = > fortune.java => fortune.class  
	 				   (Servlet)                   -->
<%  // java  서블릿으로 바뀌엇을때 service() 메소드 안쪽이라고 생각하면 된다.
	String fortuneToday="졸라 추워요~";
	// request.getParameter("num"); Crtl space 기본객체 jsp
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fortune.jsp</title>
</head>
<body>
<!-- JSP 는 html / java 코딩 할수 있다. -->
<h3>JSP는 Text 문서</h3>
<!-- 클라이언트에게 특정내용을 출력할때 <%= %> -->
<p>오늘의 운세: <Strong><%=fortuneToday%></Strong></p>
</body>
</html>