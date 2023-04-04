<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 지시어 -->
<%!
	String str1="JSP";
	String str2="Hello";
%>
<!-- 스크립트 요소(선언부) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello <%=str1 %></title><!-- 스크립트 요소(표현식) -->
</head>
<body>
	<h2>안녕하세요.Java Servlet Page</h2>
	<p>
		<% out.println(str2+str1+" study!!"); %>
		<!-- 스크립트 요소(스크립틀릿) -->
	</p>
</body>
</html>