<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL formatting</title>
</head>
<body>
	<h4>국제화 태그</h4>
	<h5>숫자포맷</h5>
	<c:set var="number1" value="12345"/>
	콤마 포함 : <fmt:formatNumber value="${number1}"/><br>
	콤마 미포함 : <fmt:formatNumber value="${number1}" groupingUsed="false" /><br>
	<fmt:formatNumber value="${number1}" type="currency" currencySymbol="$" var="print1" />
	통화기호 : ${print1}<br>
	<fmt:formatNumber value="0.03" type="percent" var="print2" scope="page"/>
	퍼센트 : ${print2}<br>
	<fmt:formatNumber value="1324655446.456" pattern="0,000.00"/>
	<br>
	<c:set var="number2" value="6,789.01"/>
	<fmt:parseNumber value="${number2}" pattern="00,000.00" var="print3" />
	소수점 : ${print3}<br>
	<fmt:parseNumber value="${number2}" integerOnly="true" var="print4" />
	정수부분 : ${print4}<br>
	
	<c:set var="today" value="<%=new java.util.Date() %>" />
	${today}<br>
	<h4>날짜 포맷</h4>
	full:<fmt:formatDate value="${today}" type="date" dateStyle="full"/><br>
	short:<fmt:formatDate value="${today}" type="date" dateStyle="short"/><br>
	long:<fmt:formatDate value="${today}" type="date" dateStyle="long"/><br>
	default:<fmt:formatDate value="${today}" type="date" dateStyle="default"/><br>

	<h4>시간 포맷</h4>
	full:<fmt:formatDate value="${today}" type="time" timeStyle="full"/><br>
	short:<fmt:formatDate value="${today}" type="time" timeStyle="short"/><br>
	long:<fmt:formatDate value="${today}" type="time" timeStyle="long"/><br>
	default:<fmt:formatDate value="${today}" type="time" timeStyle="default"/><br>

	<h4>날짜/시간 표시</h4>
	<fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
	<br>
	<fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd hh:mm:ss" />
	
	<h4>타임존 설정</h4>
	<fmt:timeZone value="GMT">
		<fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/><br>
	</fmt:timeZone>
	<fmt:timeZone value="America/Chicago">
		<fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/><br>
	</fmt:timeZone>
	
	<h4>로컬 설정</h4>
	한글: <fmt:setLocale value="ko_kr"/>
	<fmt:formatNumber value="10000" type="currency"/> /
	<fmt:formatDate value="${today}"/><br>
	일어: <fmt:setLocale value="ja_JP"/>
	<fmt:formatNumber value="10000" type="currency"/> /
	<fmt:formatDate value="${today}"/><br>
	영어: <fmt:setLocale value="en_US"/>
	<fmt:formatNumber value="10000" type="currency"/> /
	<fmt:formatDate value="${today}"/><br>
	
	<!-- 
		parseDate: formatDate 반대 개념
		requestEncoding: 인코딩 타입을 정의
		bundle,message: 메시지 처리
	 -->
</body>
</html>







