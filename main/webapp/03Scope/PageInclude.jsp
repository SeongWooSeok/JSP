<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역 include</title>
</head>
<body>
	<h2>Include page 영역 속성값</h2>
<%
	int pInt2=(Integer)(pageContext.getAttribute("pInteger"));
	String pStr2 = pageContext.getAttribute("pString").toString();
	Person pObj2 = (Person)(pageContext.getAttribute("pObject"));
%>
	<ul>
		<li>숫자:<%=pInt2 %></li>
		<li>문자열:<%=pStr2 %></li>
		<li>객체:<%=pObj2.getName()%>,<%=pObj2.getAge()%></li>
	</ul>
</body>
</html>