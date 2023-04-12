<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTLcore choose/when/otherwise</title>
</head>
<body>
	<c:set var="num" value="99" />
	
	<h4>choose</h4>
	<c:choose>
		<c:when test="${num mod 2 eq 0 }">
			${num}는 짝수입니다.
		</c:when>
		<c:otherwise>
			${num}는 홀수입니다.	
		</c:otherwise>	
	</c:choose>
	
</body>
</html>





