<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	System.out.println("/test/go7.jsp 응답 처리중...");
%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>go7.jsp</title>
<script src="../js/jquery-3.2.1.js"></script>
</head>
<body>
	<h3>
		<strong id="sec">5</strong>초 후에 /test/result7.jsp 페이지로 이동합니다.
	</h3>
	<script>
	var count=5;
		setInterval(function(){ // 1초마다 함수 호출
			count--; // 카운트 1씩 감소 시키기
			$("#sec").text(count); // 카운트 출력
			if(count==0){// 카운트가 0이 되면 이동!
				location.href = "result7.jsp";
			}
		},1000);	
		
		
	
	</script>
</body>
</html>