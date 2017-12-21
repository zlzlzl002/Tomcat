<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertform.jsp</title>
</head>
<body>
<!-- 
	 [ 파일 업로드 폼 작성법 ]
	 
	 1. method="post"
	 2. enctype="multipart/form-data"
	 3. <input type="file" />
 -->
<h3>파일 업로드 폼입니다.</h3>
<form action="insert.jsp" method="post" 
				enctype="multipart/form-data"> 
				<!-- enctype="multipart/form-data" <=파일 업로드 하려면 꼭코딩 해야함 -->
	<table>
		<tr>
			<th><label for="writer">작성자</label></th>
			<td><input type="text" name="writer" id="writer"/></td>
		</tr>
		<tr>
			<th><label for="title">제목</label></th>
			<td><input type="text" name="title" id="title"/></td>
		</tr>
		<tr>
			<th><label for="myFile">첨부파일</label></th>
			<td><input type="file" name="myFile" id="myFile"/></td>
		</tr>
		<tr>
			<td></td>
			<td><button type="submit">확인</button></td>
		</tr>
	</table>
</form>
</body>
</html>