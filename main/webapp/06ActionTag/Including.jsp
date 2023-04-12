<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String incP1="./out/IncludePage1.jsp";
	String incP2="./out/IncludePage2.jsp";
	
	pageContext.setAttribute("pageAttr", "페이지 속성");
	request.setAttribute("reqAttr", "요청 속성");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include</title>
</head>
<body>
	<h2>지시어 directive include</h2>
	<%@ include file="./out/IncludePage1.jsp" %>
	<%-- @ include file="<%=incP1 %>" --%>
	<p>외부 파일 변수: <%=var1 %></p>
	
	<h2>액션 태그 action tag</h2>
	<jsp:include page="./out/IncludePage2.jsp" />
	<jsp:include page="<%=incP2 %>" />
	<p>외부 파일 변수: <%--=var2 --%></p>
</body>
</html>








