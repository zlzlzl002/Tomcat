<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test08.jsp</title>
</head>
<body>
<%-- page 영역에 값 저장하기 pageContext.setAttribute() --%>
<c:set var="num" value="1"/>
<c:set var="name" value="김구라"/>
<c:set var="addr" value="노량진"/>
<p>번호: <strong>${pageScope.num }</strong></p>
<p>이름: <strong>${pageScope.name }</strong></p>
<p>주소: <strong>${addr }</strong></p>

<%-- jstl 을 이용한 출력 --%>
<!-- addr2 가 없으면 default="우리집" 출력
 	 addr2  가 있으면 addr2 출력 -->
<p>주소2: <strong><c:out value="${addr2 }" default="우리집"/></strong></p>
<% 	
	request.setAttribute("data", "<a href='#'>테스트</a>");
	
%>
<%-- 
	escapeXml="true"(기본값) 이면 마크없 문자열이 출력되고
	escapeXml="false" 이면 마크업승로 해석된다.
 --%>
<p>마크업: <c:out value="${data }" escapeXml="false"/></p>
<p>마크업: <c:out value="${data }" escapeXml="true "/></p>
</body>
</html>