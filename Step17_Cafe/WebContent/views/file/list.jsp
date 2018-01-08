<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/file/list.jsp</title>
</head>
<body>
<a href="private/insertform.do">파일 업로드</a>
<h3>파일 목록입니다.</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>파일</th>
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
				<td><a href="download.do?num=${tmp.num }">${tmp.orgFileName }</a></td>
				<td>${tmp.fileSize }</td>
				<td>${tmp.regdate }</td>
				<td>
					<!-- 로그인된 아이디가 글 작성자와 같을때만 삭제 링크 출력 -->
					<c:if test="${id eq tmp.writer }">
						<a href="javascript:deleteConfirm(${tmp.num })">삭제</a>
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
	function deleteConfirm(num){
		var result=confirm(num+" 번 파일을 삭제 하시겠습니까?");
		if(result){
			location.href="private/delete.do?num="+num;
		}
	}
</script>
</body>
</html>




