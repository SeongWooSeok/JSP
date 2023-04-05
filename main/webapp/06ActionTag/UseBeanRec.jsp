<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java beans</title>
</head>
<body>
	<h2>값 전달</h2>
	<jsp:useBean id="person" class="common.Person"/>
	<jsp:setProperty property="*" name="person"/>
	<ul>
		<li><jsp:getProperty property="name" name="person"/>
		<li><jsp:getProperty property="age" name="person"/>
	</ul>
</body>
</html>