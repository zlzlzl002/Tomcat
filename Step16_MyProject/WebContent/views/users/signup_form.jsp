<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/users/signup_form.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
</head>
<body>
 <div class="container">
 	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<h3>회원 가입</h3>
			<form action="signup.do" method="post">
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" id="id" name="id"/>
				</div>
				<div class="form-group">
					<label for="pwd">비밀번호</label>
					<input type="password" class="form-control" id="pwd" name="pwd"/>
				</div>
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="email" class="form-control" id="email"/>
				</div>
				<button type="submit" class="btn btn-primary">회원가입</button>
				<a href="home.do" class="btn btn-danger btn-md">취소</a>
			</form>			
		</div>
	</div>
 </div>
</body>
</html>





