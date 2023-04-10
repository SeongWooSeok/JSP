<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	int num1=100;
	pageContext.setAttribute("num2", 97);
	pageContext.setAttribute("num3", "3");
	pageContext.setAttribute("num4", "23");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
	<h3>변수 선언 및 할당</h3>
	스크립틀릿 선언 ${num1}<br>
	영역 저장 ${num2}<br>
	변수 할당 즉시 출력 ${num1=11}<br>
	변수 할당 이후 출력 ${num1=22;'입력'} =>>  ${num1}<br>
	num1=${num1},num2=${num2},num3=${num3},num4=${num4}
	
	<h3>산술연산자</h3>
	num1+num2=${num1+num2}<br>
	num1+"34"=${num1+"34"}<br>
	num2+"이십"=\${num2+"이십"}<br>
	"삼십"+"이십"=\${"삼십"+"이십"}<br>
	num1-num2=${num1-num2}<br>
	num1*num2=${num1*num2 }<br>
	num4/num3=${num4/num3}, ${num4 div num3}<br>
	num4%num3=${num4%num3}, ${num4 mod num3}<br>
	
	<h3>비교연산자</h3>
	num4 > num3 ${num4 gt num3}, ${num4 > num3}<br>
	num4 < num3 ${num4 lt num3}<br>
	num4 >= num3 ${num4 ge num3}<br>
	num4 <= num3 ${num4 le num3}<br>
	num4 == num3 ${num4 eq num3}<br>
	num4 != num3 ${num4 ne num3}<br>
	
	<h3>논리 연산자</h3>
	num3<=num4 && num3 == num4 ${num3 le num4 and num3 eq num4}<br>
	num3>=num4 || num3 != num4 ${num3 ge num4 or num3 ne num4}<br>
	
	
<%
	pageContext.setAttribute("num5", 7);
	pageContext.setAttribute("num6", "12");
	pageContext.setAttribute("nullStr", null);
	pageContext.setAttribute("emptyStr", "");
	pageContext.setAttribute("zeroLeng", new Integer[0]);
	pageContext.setAttribute("zeroSize", new ArrayList());
%>
	<h3>empty</h3>
	${empty nullStr}<br>
	${empty emptyStr}<br>
	${empty zeroLeng}<br>
	${empty zeroSize}<br>
	
	<h3>삼항 연산자</h3>
	num1>num2?"참":"거짓" =>> ${num1 gt num2?"num1 큼":"num2 큼"}
	
	<h3>null</h3>
	null+10= ${null+10}<br>
	null String+10= ${nullStr+10}<br>
	param.no value>10 ${param.noVal >10}
</body>
</html>
















