<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h3>인덱스 페이지 입니다.</h3>
<%
	// context 경로 읽어오기
	String cPath=request.getContextPath(); // 리턴받는 경로 는 => /Step06_ConnectionPool
%>
<ul>
	<li><a href="board/list.jsp">방명록 목록보기</a></li>
	<li><a href="<%=cPath%>/board/list.jsp">방명록 목록보기(절대경로)</a></li>
	<!-- expression language --> 
	<li><a href="${pageContext.request.contextPath}/board/list.jsp">방명록 목록보기(절대경로)</a></li>
</ul>




<!-- CLOB: 글 내용  한글최대 4G (Character). Oracle Server는 CLOB과 VARCHAR2 사이에 암시적 변환을 수행한다.

- BLOB: 이진 대형 객체 (Binary). 이미지, 동영상, MP3 등

- NCLOB: 내셔널 문자 대형 객체 (National). 오라클에서 정의되는 National Character Set을 따르는 문자.

- BFILE: OS에 저장되는 이진 파일의 이름과 위치를 저장. 읽기 전용 모드로만 액세스 가능.
 -->
</body>
</html>