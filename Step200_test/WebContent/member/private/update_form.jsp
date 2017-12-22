<%@page import="test.dao.UsersDao"%>
<%@page import="test.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update_form.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
</head>
<body>
	<%
		// 세션 id 값 읽어오기
		String id = (String) session.getAttribute("id");

		UsersDto dto = UsersDao.getInstance().getData(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h3>회원정보 수정하기</h3>
				<form action="upadte.jsp" method="post" id="updateForm">
					<div class="form-group">
						<label for="id">아이디</label> <input class="form-control"
							type="text" id="id" value="<%=id%>" disabled="disabled" /><br />
					</div>
					<div class="form-group">
						<label for="pwd">비밀번호</label> <input class="form-control"
							type="password" name="pwd" id="pwd" value="<%=dto.getPwd()%>" /><br />
					</div>
					<div class="form-group">
						<label for="pwd2">비밀번호 확인</label> <input class="form-control"
							type="password" id="pwd2" value="<%=dto.getPwd()%>" /><br />
					</div>
					<div class="form-group">
						<label for="email">이메일 주소</label> <input class="form-control"
							type="text" name="email" id="email" value="<%=dto.getEmail()%>" /><br />
					</div>
					<button class="btn btn-success" type="submit">수정 확인</button>
				</form>
			</div>
		</div>
	</div>
	<script>
		document.querySelector("#updateForm").addEventListener("submit",
				function(event) {
					var inputPwd = document.querySelector("#pwd").value;
					var inputPwd2 = document.querySelector("#pwd2").value;
					if (inputPwd != inputPwd2) {
						alert("비밀번호를 확인 하세요");
						event.preventDefault();//폼전송 막기 
					}
				});
	</script>
</body>
</html>