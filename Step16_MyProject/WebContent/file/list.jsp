<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file/list.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
<style>
   .table > thead { /* thead 색상 */
      background-color: #dddddd;
    }
    .table-hover > tbody > tr:hover { /* hover할때 색상*/
      background-color: #00ffff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
      h3{
        color: blue;
    }

</style>
</head>
<body>
<table class="table table-striped table-bordered table-hover">
	<h3 style='color: #337ab7'>파일 목록입니다.</h3>
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
	<c:forEach var="tmp" items="${list }">
		<tr>
			<td>${tmp.num }</td>
			<td>${tmp.writer }</td>
			<td>${tmp.title }</td>
			<td><a href="download.jsp?num=${tmp.num }">${tmp.orgFileName }</a></td>
			<td>${tmp.fileSize }</td>
			<td>${tmp.regdate }</td>
			<td><a href="delete.jsp?num=${tmp.num }">삭제</a></td>
		</tr>
	</c:forEach>
	</tbody>
	<li ng-class="{active:activated=='write'}"><a href="insertform.do" ng-click="activated='write'"><span class="glyphicon glyphicon-share"></span>Upload</a></li>
</table>
</body>
</html>