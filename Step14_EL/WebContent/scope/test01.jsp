
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope/test01.jsp</title>
</head>
<body>
<%
	// PageContext (잘안씀:페이지 내에서만) 
	// HttpServletRequest (잘쓰임:응답을 하기전까지만 사용가능) 
	// HttpSession (잘쓰임:세션이 유지동안 계속 사용가능 웹브라우저 종료or 로그아웃등등)   
	// ApplicationContext (잘안씀: 서버를 껐다 키기전까지 계속 적용됨)
	// => .setAttribute(key,value) .getAttribute(key)
	
	// page 영역에 "myName" 이라는 키값으로 String type 저장하기
	pageContext.setAttribute("myName", "김구라");
	// request 영역에 "yourName" 이라는 키값으로 String type 저장
	request.setAttribute("yourName", "원숭이");
	// session 영역에 "id" 이라는 키값으로 String tpye 저장
	session.setAttribute("id", "kimgura");
	// application 영역에 "count" 라는 키값으로 int tpye 저장
	application.setAttribute("count", 999);
	
	// session
%>
<p>pageContext 객체에 저장된 문자열 : 
	<strong>${pageScope.myName  }</strong></p>
<p>pageContext 객체에 저장된 문자열 : 
	<strong>${myName}</strong></p>

<p>HttpServletRequest 객체에 저장된 문자열 :
	<strong>${requestScope.yourName }</strong></p>
<p>HttServletRequest 객체에 저장된 문자열 :
	<strong>${yourName }</strong></p>

<p>HttpSession 객체에 저장된 문자열 :
	<strong>${sessionScope.id }</strong></p>
<p>HttpSession 객체에 저장된 문자열 :
	<strong>${id }</strong></p>

<p>AplicationContext 객체에 저장된 숫자 :
	<strong>${applicationScope.count }</strong></p>
<p>AplicationContext 객체에 저장된 숫자 :
	<strong>${count }</strong></p>
</body>
</html>