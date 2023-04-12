<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core catch</title>
</head>
<body>
	<%
	int num1=200;
	%>
	<c:catch var="eMsg">
		<%
		int res = num1/0;
		%>
	</c:catch>
	예외: ${eMsg}<br/>
	<c:set var="num2" value="400"/>
	<c:catch var="eMsg">
		${"일"+num2}
	</c:catch>
	예외: ${eMsg}
</body>
</html>




