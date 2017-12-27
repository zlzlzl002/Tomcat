<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
</head>
<body>
<%
	// session 영억 아이디 값 가져오기
	String id=(String)session.getAttribute("id");
%>
<div class="container">
	<div class="navbar-inverse">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span calss="icon-bar"></span>			
			</button>
			 <a class="navbar-brand" href="#">PRO</a>
		</div>
			  <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">전체보기</a></li>
        <li><a href="member/logout.jsp">로그아웃</a></li>
        <li><a href="board/list.jsp">목록보기</a></li>
        <li><a href="file/list.jsp">파일 올리기</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
     	<li><a href="member/signup_form.jsp">회원가입</a></li>
     	<li><a href="member/login_form.jsp?url=${pageContext.request.contextPath }">로그인</a></li>
      </ul>
    </div>
	</div>
</div>

</body>
</html>