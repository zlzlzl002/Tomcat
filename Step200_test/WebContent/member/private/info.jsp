<%@page import="test.dao.UsersDao"%>
<%@page import="test.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>private/info.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
</head>
<body>
	<%
		// 세션에 저장된 id값 읽어오기
		String id = (String) session.getAttribute("id");

		UsersDto dto = UsersDao.getInstance().getData(id);
	%>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<h3>회원가입 정보</h3>
			<table class="table table-bordered table-condensed">
				<colgroup>
					<col class="col-xs-3" />
					<col class="col-xs-3" />
					<col class="col-xs-3" />
					<col class="col-xs-3">
				</colgroup>
				<thead>
					<tr>
						<th>항목</th>
						<th>정보</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>아이디</th>
						<td><%=dto.getId()%></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><%=dto.getEmail()%></td>
					</tr>
					<tr>
						<th>가입일</th>
						<td><%=dto.getRegdate()%></td>
					</tr>
				</tbody>
			</table>
				<a href="update_form.jsp">가입정보 수정</a>
				<a href="javascript:deleteConfirm()">회원 탈퇴</a>
		</div>
	</div>
	<script>
		function deleteConfirm() {
			var isDelete = confirm("정말 탈퇴 하시겠습니까?");
			if (isDelete) {
				location.href = "delete.jsp";
			}
		}
	</script>
</body>
</html>