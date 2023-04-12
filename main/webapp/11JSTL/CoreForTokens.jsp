<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core forTokens</title>
</head>
<body>
<%-- StringTokenizer class --%>
<%
	String rainbow="red,orange,yellow,green,blue,navy,purple";
%>
<c:forTokens items="<%=rainbow%>" delims="," var="color">
	<span style="color:${color}">${color}</span>
</c:forTokens>
</body>
</html>