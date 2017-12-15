<%@page import="test.dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<link rel="stylesheet" href="/Step04_jsp/css/bootstrap.css" />
</head>
<body>
	<%
		List<MemberDto> list = MemberDao.getInstance().getList();
	%>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<table class="table table-bordered table-condensed">
			<h3>회원 목록 불러오기</h3>
				<colgroup>
					<col class="col-xs-2" />
					<col class="col-xs-3" />
					<col class="col-xs-3" />
					<col class="col-xs-2" />
					<col class="col-xs-1" />
					<col class="col-xs-1" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>주소</th>
						<th>수정</th>
						<th>삭제</th>
						<th>추가</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (MemberDto tmp : list) {
					%>
					<tr>
						<td><%=tmp.getNum()%></td>
						<td><%=tmp.getName()%></td>
						<td><%=tmp.getAddr()%></td>
						<td><a class="btn btn-success btn-sm" href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
						<td><a class="btn btn-danger btn-sm" href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
						<td><a href="insertform.jsp">추가</a></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>