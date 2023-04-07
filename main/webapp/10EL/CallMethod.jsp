<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "utils.ELUtils" %>
<%@ taglib uri="/WEB-INF/TagLib.tld" prefix="mytag" %>
<%
	ELUtils util = new ELUtils(); //객체 생성
	pageContext.setAttribute("util", util);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 메서드 호출</title>
</head>
<body>
	<h3>영역에 저장한 객체의 메서드 호출하기</h3>
	001225-3000000 => ${util.getGender("	001225-3000000")}<br>
	001225-2000000 => ${util.getGender("	001225-2000000")}<br>
	001225-123464    => ${util.getGender("	001225-123464")}<br>
	
	<h3>클래스명을 통한 정적 메서드 호출</h3>
	${ ELUtils.showGugudan(7)}
</body>
</html>