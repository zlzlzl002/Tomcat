<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file/insertform.jsp</title>
</head>
<body>
	<%
		// session id 값 가져오기
		String id = (String) session.getAttribute("id");

		// DB
	%>
	<jsp:include page="resource.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h3>파일 업로드</h3>
				<form action="insert.jsp" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="writer">작성자</label> <input type="text"
							class="form-control" id="writer" name="wirter" value="<%=id%>"
							disabled="disadbled" /> <input type="hidden" name="writer"
							id="wirter" value="<%=id%>">
					</div>
					<div class="form-group">
						<label for="title">제목</label> <input type="text"
							class="form-control" id="title" name="title" />
					</div>
					<div class="form-group">
						<label for="myFile">첨부파일</label> <input type="file"
							class="form-control" id="file" name="file" />
					</div>
					<button type="submit" class="btn btn-primary">확인</button>
					<a class="btn btn-danger" href="list.jsp">취소</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>