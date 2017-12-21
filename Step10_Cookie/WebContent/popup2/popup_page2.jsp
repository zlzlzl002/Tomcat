<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>불토 파격 할인</h3>
<p>뉴발  슬리퍼 3000원</p>
<p>샤넬 수영복 29800원</p>
<form action="nopopup2.jsp" method="post" name="myForm">
	<label>.
	  <!-- 체크를 하면 chk 파라미터값이 넘어간다 -->
		<input type="checkbox" name="chk2" value="no" />
		1 분동안 팝업 띄우지 않기
	</label>
	<a href="javascript:closePopup()">닫기</a>
</form>
<script>
	function closePopup(){
		// 폼 강제 전송
		document.myForm.submit();
	}
</body>
</html>