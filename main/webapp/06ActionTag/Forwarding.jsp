<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	pageContext.setAttribute("pageAttr", "페이지 속성");
	request.setAttribute("reqAttr", "요청 속성");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	<h2>forward 액션 태그</h2>
	<jsp:forward page="./ForwardTarget.jsp" />
</body>
</html>