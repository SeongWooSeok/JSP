<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page이동</title>
<!-- pagemove이후에는 pagecontext에 값이 없기때문에 Object로 객체선언을 해줘야 오류가 안남
		Object는 객체 int같은 자료형은 값 그자체를 가짐 -->
</head>
<body>
	<h2>page 영역 속성값</h2>
<%
	Object pInt2=pageContext.getAttribute("pInteger");
	Object pStr2 = pageContext.getAttribute("pString");
	Object pObj2 = pageContext.getAttribute("pObject");
%>
	<ul>
		<li>숫자:<%=pInt2==null ?"값이 없음" : pInt2%></li>
		<li>문자열:<%=pStr2==null ?"값이 없음" : pStr2%></li>
		<li>객체:<%=pObj2==null?"값이 없음" : pObj2%></li>
	</ul>
</body>
</html>