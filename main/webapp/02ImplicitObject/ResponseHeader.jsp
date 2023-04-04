<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("UTF-8");
	SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	long date = s.parse(request.getParameter("date")).getTime();
	java.sql.Date date2 = new java.sql.Date(date);
	System.out.println(date2);
	
	int num=Integer.parseInt(request.getParameter("number"));
	String str=request.getParameter("string");
	
	response.setContentType("text/html;charset=utf-8");
	response.addDateHeader("mBirthday",date);
	response.addIntHeader("mNumber",num);
	response.addIntHeader("mNumber2",8282);
	response.addHeader("mStr",str);
	//response.addHeader("mStr","peter");
	response.setHeader("mStr","chris");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response 내장객체</title>
</head>
<body>
	<h2>응답 헤더 정보</h2>
	<ul>
<%
	Collection<String> headerNames=response.getHeaderNames();
	for(String name:headerNames){
		String val=response.getHeader(name);
%>
		<li><%=name%>:<%=val%></li>
<%
	}
%>
	</ul>
	
	<h2>number 출력</h2>
	<ul>
<%
	Collection<String> mNumber=response.getHeaders("mNumber");
	for(String mNum:mNumber){
%>
		<li>mNumber:<%=mNum%></li>
<%
	}
%>
	</ul>
	
</body>
</html>