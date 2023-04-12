<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체 값 전달</title>
</head>
<body>
<%
	request.setAttribute("personObj", new Person("이성계",70));
	request.setAttribute("stringObj", "문자열");
	request.setAttribute("integerObj", new Integer(8282));
%>
<jsp:forward page="ObjParamResult.jsp">
	<jsp:param value="100" name="back"/>
	<jsp:param value="200" name="leeback"/>
</jsp:forward>
</body>
</html>








