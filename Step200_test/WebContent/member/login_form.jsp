<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/login_form.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
<style>
body {
	background: #f8f8f8;
	padding: 100px 0;
}

#form_css>div {
	margin: 15px 0;
}

body {
	padding: 2em;
}
</style>
</head>
<body>
	<%
		// 로그인후 리다일렉트  이동할 url 주소 따오기
		String url = request.getParameter("url");
		if (url == null) {
			url = request.getContextPath();
		}
	%>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
			<div class="page-header">
				<h2>로그인</h2>
			</div>
			<div class="login-box well">
				<form class="form-horizontal" action="login.jsp?url=<%=url%>"
					method="post" id="form_css">
					<div class="form-group">
						<label for="id">아이디</label> <input name="id" id="id"
							placeholder="Username" type="text" class="form-control" autofocus />
					</div>
					<div class="form-group">
						<label for="pwd">비밀번호</label> <input name="pwd" id="pwd"
							placeholder="Password" type="pwd" class="form-control" />
					</div>
					<div class="form-group">
						<button type="submit" class="form-control btn btn-primary">로그인</button>
					</div>
					<!-- span class='text-center'><a href=""
                    class="text-sm">비밀번호 찾기</a></span> -->
					<div class="form-group">
						<a class="form-control btn btn-success" href="signup_form.jsp">회원가입</a>
					</div>
					<div class="form-grop">
						<a class="" href="id_form.jsp">아이디 찾기</a> <a href="">비밀번호 찾기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>