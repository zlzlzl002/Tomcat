<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup2/main.jsp</title>
</head>
<body>
<%
	// 팝업창을 띄울지에 대한 여부
	boolean canPopup=true;
	// nopopup.jsp 쿠키 목록을 읽어와서
	Cookie[] cookies=request.getCookies();
	// 반복물 돌면서 쿠키를 확인해서
	for(Cookie tmp:cookies){
		// popup 이라는 키값으로 저장된 쿠키가 존재하면
		if(tmp.getName().equals("popup")){
			// 팝얼을 뛰우지 않도록 설정
			canPopup=false;
		}
	}            
%>
<%if(canPopup) {%>
	<script>
		<!-- 팝업 창   홈페이지 로딩시점에 바로 팝업 뛰우는건 nono  -->
		window.open("popup_page.jsp","팝업","width=500,height=500,top=100,left=100");
		// window.open("popup_page2.jsp","팝업2","width=600,height=600,top=200,left=200");
	</script>
<%} 
	
%>

<h3>메인 페이지 입니다.</h3>
<p>Gura 홈쇼핑</p>
<p>겨울을 미리 준비 하세요~</p>
</body>
</html>