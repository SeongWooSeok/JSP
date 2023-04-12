<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.ManageCookie" %>
<%
	ManageCookie.makeCookie(response, "ELCookie", "EL사용", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기타 내장객체</title>
</head>
<body>
	<h4>쿠키값:${cookie.ELCookie.value}</h4>
	
	<h2>http 헤더 정보</h2>
	<h5>host:${header.host}</h5>
	<h5>user-agent:${header['user-agent']}</h5>
	<h5>cookie:${header.cookie}</h5>
	
	<h4>oracle:${initParam.OracleDriver}</h4>
	<h2>경로</h2>
	<h4>${pageContext.request.contextPath }</h4>
</body>
</html>