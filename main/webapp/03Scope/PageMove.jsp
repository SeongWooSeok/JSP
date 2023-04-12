<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 이동</title>
</head>
<body>
	<h2>이동 후 page 영역</h2>
<%
	Object pInt2 = pageContext.getAttribute("pInteger");
	Object pStr2 = pageContext.getAttribute("pString");
	Object pObj2 = pageContext.getAttribute("pObject");
%>
	<ul>
		<li>숫자:<%= (pInt2==null)?"값이 없음":pInt2 %></li>
		<li>문자열:<%= (pStr2==null)?"값이 없음":pStr2 %></li>
		<li>객체:<%= (pObj2==null)?"값이 없음":pObj2 %></li>
	</ul>
</body>
</html>