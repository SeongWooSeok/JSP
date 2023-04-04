<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response 내장객체</title>
</head>
<body>
<%
	String id= request.getParameter("userId");
	String pw= request.getParameter("userPw");
	if(id.equalsIgnoreCase("user")&&pw.equalsIgnoreCase("1234")){
		//response.sendRedirect()
		response.sendRedirect("ResponseOK.jsp");
	}else{
		//request.getRequestDispatcher()
		request.getRequestDispatcher("ResponseMain.jsp?logErr=1")
			.forward(request,response);
	}
%>
</body>
</html>