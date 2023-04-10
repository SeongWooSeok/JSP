<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTLcore choose/when/otherwise</title>
</head>
<body>
	<c:set var="num" value="99"/>
	
	<h4>choose</h4>
	<c:choose>
		<c:when test="${num mod 2 eq 0 }">
			${num }은 짝수입니다.
		</c:when>
		<c:otherwise>
			${num }는 홀수입니다
		</c:otherwise>
	</c:choose>
	
	<h4>영어,수학,과학 점수를 입력받아서 평균을 구하고 학점 출력</h4>
	<form action="#">
		영어: <input type="text" name="eng"/><br>
		수학: <input type="text" name="math"/><br>
		과학: <input type="text" name="sci"/><br>
		<input type="submit" value="학점 구하기"/>
	</form>
	<!-- 90점이상 수, 80점이상 우, 79점이상 미, 60점이상 양, 나머지 가 -->
	<c:set var="eng" value="${param.eng}" />
	<c:set var="math" value="${param.math}" />
	<c:set var="sci" value="${param.sci}" />
	<c:set var="total" value="${(eng + math + sci)}" />
	<c:set var="avg" value="${total / 3}" />
	<c:choose>
		<c:when test="${avg >= 90 }">평균점수 : ${avg} / 학점 : 수</c:when>
		<c:when test="${avg >= 80 }">평균점수 : ${avg} / 학점 : 우</c:when>
		<c:when test="${avg >= 70 }">평균점수 : ${avg} / 학점 : 미</c:when>
		<c:when test="${avg >= 60 }">평균점수 : ${avg} / 학점 : 양</c:when>
		<c:otherwise>평균점수 : ${avg} / 학점 : 가</c:otherwise>
	</c:choose>
	
<!-- ===================================================================== -->
	
	<h4>영어,수학,과학 점수를 입력받아서 평균을 구하고 학점 출력</h4>
	<form action="#">
		영어: <input type="number" name="eng" min="0" max="100" value="${param.eng }"/><br>
		수학: <input type="number" name="math" min="0" max="100" value="${param.math}"/><br>
		과학: <input type="number" name="sci" min="0" max="100" value="${param.sci}"/><br>
		<input type="submit" value="학점 구하기"/>
	</form>
	<!-- 90점이상 수, 80점이상 우, 79점이상 미, 60점이상 양, 나머지 가 -->
<c:if test="${not(empty param.eng or empty param.math or empty param.sci)}">
	<c:set var="avg" value="${param.eng + param.math + param.sci/3 }"/>
	<c:choose>
		<c:when test="${avg >= 90 }">평균점수 : ${avg} / 학점 : 수</c:when>
		<c:when test="${avg >= 80 }">평균점수 : ${avg} / 학점 : 우</c:when>
		<c:when test="${avg >= 70 }">평균점수 : ${avg} / 학점 : 미</c:when>
		<c:when test="${avg >= 60 }">평균점수 : ${avg} / 학점 : 양</c:when>
		<c:otherwise>평균점수 : ${avg} / 학점 : 가</c:otherwise>
	</c:choose>
</c:if>
</body>
</html>