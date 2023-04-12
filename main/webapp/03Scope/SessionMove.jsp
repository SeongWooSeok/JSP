<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다른 페이지 session 영역</title>
</head>
<body>
	<h2>다른 페이지 이동 후 session 속성 값</h2>
<%
	ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
	for(String item:lists){
		out.print(item+"<br>");
	}
%>
</body>
</html>