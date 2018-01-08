<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/cafe/detail.jsp</title>
<style>
	.content{
		border: 1px solid red;
	}
	.comment textarea{
		width:80%;
		background-color: #fff;
	}
	.comment form{
		display: none;
	}
	.comment{
		position: relative;
	}
	.comment .reply_icon{
		position: absolute;
		width: 20px;
		height: 20px;
		top:0;
		left:-20px;
		border-left: 2px solid green;
		border-bottom: 2px solid green;
	}	
</style>
</head>
<body>
<c:if test="${not empty keyword }">
	<p>검색어 : <strong>${keyword }</strong></p>
</c:if>
<div>
	<c:if test="${dto.prevNum ne 0 }">
		<a href="detail.do?num=${dto.prevNum }&condition=${condition}&keyword=${keyword}">이전글</a>
	</c:if>
	<c:if test="${dto.nextNum ne 0 }">
		<a href="detail.do?num=${dto.nextNum }&condition=${condition}&keyword=${keyword}">다음글</a>
	</c:if>
</div>
<h3>상세글 내용 페이지</h3>
<%-- 로그인한 회원이 작성한 글이라면 수정, 삭제 링크를 출력한다 --%>
<c:if test="${id eq dto.writer }">
	<a href="private/updateform.do?num=${dto.num }">수정</a>
	<a href="javascript:deleteCheck()">삭제</a>
</c:if>
<table>
	<tr>
		<th>글번호</th>
		<td>${dto.num }</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${dto.writer }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto.title }</td>
	</tr>
</table>
<div class="content">${dto.content }</div>
<!-- 덧글 목록 출력하기 -->
<div class="comments">
	<c:forEach var="tmp" items="${commentList }">
		<div class="comment" <c:if test="${tmp.num ne tmp.comment_group }">style="margin-left:100px"</c:if> >
			<c:if test="${tmp.num ne tmp.comment_group }">
				<div class="reply_icon"></div>
			</c:if>
			<div>
				from <strong>${tmp.writer }</strong>
				${tmp.regdate }<br/>
				to <strong>${tmp.target_id }</strong>
				<a href="javascript:">답글</a>
			</div>
			<textarea rows="5" disabled>${tmp.content }</textarea>
			<form action="comment_insert.do" method="post">
				<!-- 덧글 작성자 -->
				<input type="hidden" name="writer" value="${id }"/>
				<!-- 덧글 그룹 -->
				<input type="hidden" name="ref_group" value="${dto.num }" />
				<!-- 덧글 대상 -->
				<input type="hidden" name="target_id" value="${tmp.writer }" />
				<input type="hidden" name="comment_group" value="${tmp.comment_group }" />
				<textarea name="content"></textarea>
				<button type="submit">등록</button>
			</form>		
		</div>
	</c:forEach>
</div>

<!-- 원글에 대한 덧글 입력 폼 -->
<div class="comment_form">
	<form action="comment_insert.do" method="post">
		<!-- 덧글 작성자 -->
		<input type="hidden" name="writer" value="${id }"/>
		<!-- 덧글 그룹 -->
		<input type="hidden" name="ref_group" value="${dto.num }" />
		<!-- 덧글 대상 -->
		<input type="hidden" name="target_id" value="${dto.writer }" />
		<textarea name="content"></textarea>
		<button type="submit">등록</button>
	</form>
</div>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script>
	//로그인 했는지 안했는지 여부 
	var isLogin=${isLogin};
	
	//덧글 전송 이벤트가 일어 났을때 실행할 함수 등록 
	$(".comment_form > form, .comment form").submit(function(){
		if(!isLogin){//만일 로그인 하지 않았다면 
			alert("로그인이 필요 합니다.");
			//로그인 페이지로 이동 
			location.href="${pageContext.request.contextPath}"+
			"/users/login_form.do"+
			"?url=${pageContext.request.contextPath}"+
			"/cafe/detail.do?num=${dto.num}";
			
			return false; //폼전송 막기 
		}
	});

	//덧글 달기 혹은 취소 버튼을 눌렀을때 실행할 함수 등록 
	$(".comment a").click(function(){
		if($(this).text()=="답글"){
			$(this)
			.text("취소")
			.parent()
			.parent()
			.find("form")
			.slideToggle();	
		}else{
			$(this)
			.text("답글")
			.parent()
			.parent()
			.find("form")
			.slideToggle();
		}
	});	

	function deleteCheck(){
		var isDelete=confirm("글을 삭제 하시겠습니까?");
		if(isDelete){
			location.href="private/delete.do?num=${dto.num}";
		}
	}
</script>
</body>
</html>








