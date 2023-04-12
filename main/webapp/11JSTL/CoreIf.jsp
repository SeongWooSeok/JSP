<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core if</title>
</head>
<body>
	<c:set var="number" value="100" />
	<c:set var="string" value="JSP" />
	
	<c:if test="${number mod 2 eq 0}" var="result" scope="request" >
		${number}는 짝수입니다.<br>
	</c:if>
		result:${result}<br>
	
	<c:if test="100">
		EL이 아닌 정수를 지정하면 false
	</c:if>
	
	<c:if test="${string eq 'Java' }" var="result2">
		문자열은 java입니다.<br>
	</c:if>
	<c:if test="${not result2 }">
		문자열이 java가 아닙니다.<br>
	</c:if>
	
	<c:if test="tRuE" var="result3">
		대소문자 구분없이 "tRuE"인 경우 true<br>
	</c:if>
		result:${result3}<br>
	<c:if test=" ${ true } " var="result4">
		EL 양쪽에 공백이 존재하면 false<br>
	</c:if>
		result:${result4}<br>
	
	<c:if test="${string eq 'Java' }" >
		문자열은 java입니다.<br>
	</c:if>
	<c:if test="${string eq 'JSP' }" >
		문자열은 JSP입니다.<br>
	</c:if>
</body>
</html>




