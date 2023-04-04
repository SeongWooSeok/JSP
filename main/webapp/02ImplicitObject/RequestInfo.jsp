<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<h2>환경 정보 읽기</h2>
	<ul>
		<li>데이터 전송방식 : <%=request.getMethod() %></li>
		<li>URL : <%=request.getRequestURL() %></li>
		<li>URI : <%=request.getRequestURI() %></li>
		<li>protocol : <%=request.getProtocol() %></li>
		<li>서버명 : <%=request.getServerName() %></li>
		<li>서버포트 : <%=request.getServerPort() %></li>
		<li>클라이언트 IP 주소 : <%=request.getRemoteAddr() %></li>
		<li>쿼리 스트링 : <%=request.getQueryString() %></li>
		<li>전송값 eng : <%=request.getParameter("eng") %></li>
		<li>전송값 kor : <%=request.getParameter("kor") %></li>
	</ul>
</body>
</html>