<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h3>인덱스 페이지 입니다.</h3>
<!-- Spring frame<=> MVC
Client => Web Server => Action<=>( -->
<ul>
	<li><a href="fortune.jsp">오늘의 운세 보기</a></li>
	<li><a href="fortune.do">오늘의 운세 보기2</a></li> <!-- Servlet  -->
	<li><a href="showtime.do">현재 시간 보기</a></li> 
		<!-- /showtime.do 인데  /showtime command 라고한다
			/member/list.do 인데 /member/list 는 command 라고한다.-->
	<li><a href="person.do">오늘의 인물</a></li>
	<li><a href="phone.do">오늘의 핸드폰</a></li>
	<li><a href="member/detail.do">회원 한명의 정보 보기</a></li>
	<li><a href="member/list.do">회원 목록 보기</a></li>
</ul>
</body>
</html>