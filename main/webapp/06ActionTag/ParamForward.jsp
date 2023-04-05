<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%!
	String pVal="기본 변수";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Param</title>
</head>
<body>
	<jsp:useBean id="person" class="common.Person" scope="request"/>
	<jsp:setProperty property="name" name="person" value="원빈"/>
	<jsp:setProperty property="age" name="person" value="50"/>
	<jsp:forward page="ParamGet.jsp?thing=컴퓨터">
		<jsp:param value="일본" name="nation"/>
		<jsp:param value="<%=pVal %>" name="basic"/>
	</jsp:forward>
</body>
</html>