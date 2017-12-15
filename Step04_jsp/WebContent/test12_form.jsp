<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test11_form.jsp</title>
</head>
<body>
<h3>회원가입 폼 입니다.</h3>
<form action="test12.jsp" method="post">
	이메일 <input type="text" name="email"/><br/>
	비밀번호 <input type="password" name="pwd" /><br/>
	직업 
	<select name="job">
		<option value="">선택</option>
		<option value="programmer">프로그래머</option>
		<option value="teacher">교사</option>
		<option value="doctor">의사</option>
		<option value="etc">기타</option>
	</select>
	<br/>
	성별
	<br/>
	<label>
	<!-- radio는 name=""속성 같으면 그룹묶인다. 1개만 선택가능 -->
		<input type="radio" name="gender" checked="checked" 
		value="man"/> 남
	</label>
	<label>
		<input type="radio" name="gender" value="woman"/> 여
	</label>
	<br/>
	취미
	<br/>
	<label>
	<!-- checkbox = request.getparameterValues() -->
		<input type="checkbox" name="hobby" value="game"/> 게임
	</label>
	<label>
		<input type="checkbox" name="hobby" value="movie"/> 영화
	</label>
	<label>
		<input type="checkbox" name="hobby" value="tennis"/> 테니스
	</label>
	<label>
		<input type="checkbox" name="hobby" value="piano"/> 피아노
	</label>
	<br/>
	<button type="submit">가입</button>
</form>
</body>
</html>