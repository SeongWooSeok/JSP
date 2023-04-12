<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward target</title>
</head>
<body>
	<h2>포워딩 결과</h2>
	<ul>
		<li>page 영역:<%=pageContext.getAttribute("pageAttr") %></li>
		<li>request 영역:<%=request.getAttribute("reqAttr") %></li>
	</ul>
</body>
</html>