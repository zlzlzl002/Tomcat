<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/users/signup_form.jsp</title>

</head>
<body>
<h3>회원 가입 페이지 입니다.</h3>
<form action="signup.do" method="post">
	<label for="id">아이디</label>
	<input type="text" name="id" id="id"/><br/>
	<label for="pwd">비밀번호</label>
	<input type="text" name="pwd" id="pwd"/><br/>
	<label for="email">이메일</label>
	<input type="text" name="email" id="email"/><br/>
	<button type="submit">가입</button>
</form>
</body>
</html>





