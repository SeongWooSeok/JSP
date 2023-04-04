<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시어 page 속성 import</title>
</head>
<body>
<%
	Date today=new Date();
	SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
	String todayF = fm.format(today);
	out.println("오늘 날짜:"+todayF);
%>
</body>
</html>