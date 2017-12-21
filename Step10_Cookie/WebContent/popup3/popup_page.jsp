<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup3/popup_page.jsp</title>
</head>
<body>
<h3>불금 파격행사</h3>
<p>샤넬 가방500,000,000</p>
<p>해밀턴 시계 100,000,100</p>
<form action="nopopup.jsp" methd="post" name="myForm">
	<label for="">
		<input type="checkbox" name="chk" value="no"/>
		1분동안 팝업 x
	</label>
	<a href="javascript:closePopup()">닫기</a>
</form>
<script>
	function closePopup(){
		// 폼 강제 전송
		document.myForm.submit();
	}
</script>
</body>
</html>