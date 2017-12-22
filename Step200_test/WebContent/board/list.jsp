<%@page import="java.util.List"%>
<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
<style>
h3 {
	color: blue;
}

.table>thead { /* thead 색상 */
	background-color: #ABC668;
}

.table-hover>tbody>tr:hover { /* hover할때 색상*/
	background-color: #00ffff;
}

.table>thead>tr>th {
	text-align: center;
}

.table>tbody { /* tbody 색상 */
	background-color: #EEEEEE;
}

.container {
	width: 70%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-top: 5%; /* 테두리와 내용 사이의 패딩 여백 */
}
</style>
</head>
<body>
	<%
		// 글목록 얻어오기
		List<BoardDto> list = BoardDao.getInstance().getList();
	%>


	<div class="container">
		<h3 style="color: #337ab7">등업 게시판 목록</h3>
		<table class="table table-bordered table-condensed table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (BoardDto tmp : list) {
				%>
				<tr>
					<td><%=tmp.getNum()%></td>
					<td><%=tmp.getWriter()%></td>
					<td><a href="detail.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle()%></a></td>
					<td><%=tmp.getRegdate()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<hr />
		<li ng-class="{active:activated=='write'}"><a href="insertform.jsp"
			ng-click="activated='write'"><span
				class="glyphicon glyphicon-log-in"></span> Write</a></li>
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">&laquo;</a></li>
				<li><a href="#">1</a></li>
				<li><a href="table2.html">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</div>
</body>
</html>