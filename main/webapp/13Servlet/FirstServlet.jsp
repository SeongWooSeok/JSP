<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Servlet</title>
</head>
<body>
	<h2>web.xml 설정 매핑한 뒤 출력</h2>
	<h4><%=request.getAttribute("message")%></h4>
	<a href="./FirstServlet.do">바로가기</a>
</body>
</html>