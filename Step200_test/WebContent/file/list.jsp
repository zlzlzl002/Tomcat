<%@page import="java.util.List"%>
<%@page import="test.file.dao.FileDao"%>
<%@page import="test.file.dto.FileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file.list.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
</head>
<body>
	<%
		List<FileDto> list = FileDao.getInstance().getList();
	%>
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">	
	<table class="table table-bordered table-condensed">
		<h3>파일 목록입니다.</h3>
		<colgroup>
    		<col class="col-xs-1"/>
    		<col class="col-xs-2"/>
    		<col class="col-xs-2"/>
    		<col class="col-xs-2"/>
    		<col class="col-xs-2"/>
    		<col class="col-xs-2"/>
    		<col class="col-xs-1"/>
    	</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>파일명</th>
				<th>크기</th>
				<th>등록일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(FileDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getWriter() %></td>
				<td><%=tmp.getTitle() %></td>
				<td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName() %></a></td>
				<td><%=tmp.getFileSize() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
		<a href="insertform.jsp">파일 올리기</a>
	</div>
</div>	
</body>
</html>