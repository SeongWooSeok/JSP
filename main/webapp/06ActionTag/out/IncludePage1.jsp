<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include page 1</title>
</head>
<body>
	<h2>외부 파일 1</h2>
<%
	String var1="외부 파일1";
%>
	<ul>
		<li>page 영역:<%=pageContext.getAttribute("pageAttr") %></li>
		<li>request 영역:<%=request.getAttribute("reqAttr") %></li>
	</ul>
</body>
</html>