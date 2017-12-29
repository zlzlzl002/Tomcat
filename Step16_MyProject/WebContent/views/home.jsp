<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/home.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
<style>
#myNavbar {
	background-color: black;
}
</style>
</head>
// 반복물 돌면서 쿠키를 확인해서
		for(Cookie tmp:cookies){
			// popup 이라는 키값으로 저장된 쿠키가 존재하면
			if(tmp.getName().equals("popup")){
				// 팝얼을 뛰우지 않도록 설정
				canPopup=false;
			}
		} 

<body>
	<c:if test="${not empty id }">
		<p>
			<a href="users/private/info.do">${id }</a>님 로그인중
		</p>
		<a href="users/logout.do">로그아웃</a>
	</c:if>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">전체보기</a></li>
					<li><a href="file/list.do">파일 목록 보기</a></li>
					<li><a href="#">1111111</a></li>
					<li><a href="#">0000000</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="users/signup_form.do"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<!-- 회원가입 링크 -->
					<li><a
						href="users/login_form.do?num=${pageContext.request.contextPath }">
							<span class="glyphicon glyphicon-log-in"></span> Login
					</a></li>
					<!-- 로그인 링크 -->
				</ul>
			</div>
		</nav>	
	</div>  
</body>
</html>














