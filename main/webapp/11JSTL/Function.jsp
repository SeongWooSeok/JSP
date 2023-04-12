<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL functions</title>
</head>
<body>
	length:	${fn:length('123123')}<br/>
	toUpperCase: ${fn:toUpperCase('sss')}<br/>
	toLowerCase: ${fn:toLowerCase('SSS') }<br/>
	substring: ${fn:substring("check",1,3) }<br/>
	substringAfter: ${fn:substringAfter('applepie','pp') }<br/>
	substringBefore: ${fn:substringBefore('applepie','pp') }<br/>
	trim: ${fn:trim('    apple pie    ')}<br/>
	replace: ${fn:replace('apple phone','apple','samsung')}<br/>
	indexOf: ${fn:indexOf('applepie','e') }<br/>
	startsWith: ${fn:startsWith('applepie','e') }<br/>
	endsWith: ${fn:endsWith('applpie','e') }<br/>
	contains: ${fn:contains('applEpiE','e') }<br/>
	containsIgnoreCase: ${fn:containsIgnoreCase('applEpiE','e') }<br/>
	<c:set var='list' value="${fn:split('a,p,p,l,e,p,i,e',',') }" />
	split: 
	<c:forEach var="l" items="${list}" varStatus="stat" >
	${l}
	</c:forEach>
	<br/>
	join: ${fn:join(list,',')}<br/>
	escapeXml: ${fn:escapeXml('<strong>is delicious.</strong>') }<br/>

</body>
</html>