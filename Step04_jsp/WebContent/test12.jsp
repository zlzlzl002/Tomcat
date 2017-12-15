<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test12.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	// 폼 전송 되는 내용을 변수에 담아 보세요.
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	String job=request.getParameter("job");
	// radio 선택된 value="문자열" 출력
	String gender=request.getParameter("gender");
	// checkbox(getParameterValues) 선택된 value="문자열" 출력    
	String[] hobby=request.getParameterValues("hobby");
	hobby[0]="game";
	hobby[1]="movie";
	hobby[2]="tennis";
	hobby[3]="piano";
	System.out.println("email:"+email);
	System.out.println("pwd:"+pwd);
	System.out.println("job:"+job);
	System.out.println("gender:"+gender);
	
	for(int i=0; i<hobby.length; i++){
		System.out.println(i);	
	}
	

	
%>

<p><%=email%></p>
<p><%=pwd %></p>
<p><%=job %></p>
<p><%=gender %></p>



</body>
</html>