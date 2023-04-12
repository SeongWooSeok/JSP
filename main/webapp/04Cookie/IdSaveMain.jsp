<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.ManageCookie" %>
<%
	String loginId=ManageCookie.readCookie(request, "loginId");
	String cookieCheck="";
	if(!loginId.equals("")){
		cookieCheck="checked";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 값 저장하기</title>
</head>
<body>
	<form action="IdSaveProcess.jsp" method="post">
		<fieldset>
			<legend>로그인 페이지</legend>
			<label>아이디</label>
			<input type="text" name="user_id" value="<%=loginId %>"/>
			<input type="checkbox" name="save_check" value="Y" <%=cookieCheck %> />
			아이디 저장하기
			<br>
			<label>패스워드</label>
			<input type="text" name="user_pw" />
			<br>
			<input type="submit" value="로그인하기" />
		</fieldset>
	</form>
</body>
</html>