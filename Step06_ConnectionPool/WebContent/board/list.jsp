<%@page import="test.board.dao.BoardDao"%>
<%@page import="java.util.List"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>
<link rel="stylesheet" href="/Step06_ConnectionPool/css/bootstrap.css" />
<style>
.table>thead { /* thead 색상 */
	background-color: #dddddd;
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
	width: 50%;
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
			<h3>글 목록 입니다.</h3>
	<a href="insertform.jsp">새글 작성</a>
	<div class="container">
		<div class="row">
			<div class="col class=col-sm-6 col-sm-offset-3">
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
			</div>
		</div>
	</div>
</body>
</html>