<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core url</title>
</head>
<body>
	<h4>url로 링크</h4>
	<c:url var="url" value="/11JSTL/include/OtherPage.jsp">
		<c:param name="param1" value="수박" />
		<c:param name="param2" value="당근" />
	</c:url>
	<a href="${url}">other page</a>
</body>
</html>