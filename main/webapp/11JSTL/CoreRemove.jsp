<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 변수 선언 -->
<c:set var="scopeVar" value="Page value" />
<c:set var="scopeVar" value="Request value" scope="request" />
<c:set var="scopeVar" value="Session value" scope="session" />
<c:set var="scopeVar" value="Application value" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core remove</title>
</head>
<body>
	<ul>
		<li>scopeVar : ${scopeVar}</li>
		<li>requestScope.scopeVar : ${requestScope.scopeVar}</li>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar}</li>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar}</li>
	</ul>
	<c:remove var="scopeVar" scope="session" />
	<ul>
		<li>scopeVar : ${scopeVar}</li>
		<li>requestScope.scopeVar : ${requestScope.scopeVar}</li>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar}</li>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar}</li>
	</ul>
	<c:remove var="scopeVar" />
	<ul>
		<li>scopeVar : ${scopeVar}</li>
		<li>requestScope.scopeVar : ${requestScope.scopeVar}</li>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar}</li>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar}</li>
	</ul>
	
	
</body>
</html>