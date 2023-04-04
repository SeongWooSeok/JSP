<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response 내장객체</title>
</head>
<body>
	<h2>로그인 폼</h2>
<%
	String loginErr=request.getParameter("logErr");
	if(loginErr!=null)out.print("로그인 실패");
%>
	<form action="./ResponseLogin.jsp" method="post">
		ID : <input type="text" name="userId"/><br>
		Password : <input type="text" name="userPw"/><br>
		<input type="submit" value="로그인"/>
	</form>
	
	<h2>HTTP 응답 헤더 설정</h2>
	<form action="./ResponseHeader.jsp" method="post">
		Date format: <input type="text" name="date" value="2021-10-25 09:00"/><br>
		Number format: <input type="text" name="number" value="1004"/><br>
		String format: <input type="text" name="string" value="James"/><br>
		<input type="submit" value="설정/출력"/>
	</form>
</body>
</html>


