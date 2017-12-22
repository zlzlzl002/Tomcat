<%@page import="test.dao.UsersDao"%>
<%@page import="test.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/insertform.jsp</title>
</head>
<body>
<%
	String id=(String)session.getAttribute("id");
	
%>

<form method=post name=writeform action=insert.jsp>
<table width=400 border=1 cellspacing=0 cellpadding=0 align=center>
 <!--  id  -->
 <tr>
  <td><label for="writer">작성자</label></td>
  <td>
   <input type=text name="writer" id="writer" value="<%=id %>"
   		size=10 maxlength=10 disabled="disabled" >
  	<input type="hidden" name="writer" id="writer" value=<%=id %> />
  </td>
 </tr>
 <!--  제목  -->
 <tr>
  <td><label for="title">제목</label></td>
  <td>
   <input type=text size=40 maxlength=50 name=subject>
  </td>
 </tr>
 <!--  내용  -->
 <tr>
  <td>내용</td>
  <td>
   <textarea name=content rows=13 cols=40></textarea>
  </td>
 </tr>
 <!--  비밀번호  -->
 <tr>
  <td>비밀번호</td>
  <td>
   <input type=password size=8 maxlength=12 name="pw">
  </td>
 </tr>
 <!--  확인 버튼  -->
 <tr>
  <td colspan=2 align=center>
   <input type=submit value=확인>
  </td>
 </tr>
</table>
</form>
</body>
</html>