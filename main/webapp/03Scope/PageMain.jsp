<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%
	pageContext.setAttribute("pInteger", 999);
	pageContext.setAttribute("pString", "page area String");
	pageContext.setAttribute("pObject", new Person("손흥민",30));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>page 영역 속성값</h2>
<%
	int pInt=(Integer)(pageContext.getAttribute("pInteger"));
	String pStr = pageContext.getAttribute("pString").toString();
	Person pObj = (Person)(pageContext.getAttribute("pObject"));
%>
	<ul>
		<li>숫자:<%=pInt %></li>
		<li>문자열:<%=pStr %></li>
		<li>객체:<%=pObj.getName()%>,<%=pObj.getAge()%></li>
	</ul>
	
	<%@ include file="PageInclude.jsp" %>
	
	<a href="PageMove.jsp">page 이동</a>
</body>
</html>









