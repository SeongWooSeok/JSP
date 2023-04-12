<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="common.Person" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core set</title>
</head>
<body>
	<!-- 변수 선언 -->
	<c:set var="aVar" value="200"/>
	<c:set var="elVar" value="${aVar mod 7}"/>
	<c:set var="expVar" value="<%= new Date() %>"/>
	<c:set var="tagVar">태그내 설정</c:set>
	
	<h3>변수 출력</h3>
	${pageScope.aVar}<br>${elVar}<br>${expVar}<br>${tagVar}<br>
	
	<h4>자바빈즈 생성자 사용</h4>
	<c:set var="personVar1" value='<%=new Person("지수",22) %>' scope="request" />
	<ul>
		<li>이름: ${requestScope.personVar1.name}</li>
		<li>나이: ${personVar1.age}</li>
	</ul>
	
	<h4>자바빈즈 target, property 사용</h4>
	<c:set var="personVar2" value="<%=new Person() %>" scope="request" />
	<c:set target="${personVar2}" property="name" value="정약용" />
	<c:set target="${personVar2}" property="age" value="60" />
	<ul>
		<li>이름: ${requestScope.personVar2.name}</li>
		<li>나이: ${personVar2.age}</li>
	</ul>
	
	<h4>List</h4>
	<%
		ArrayList<Person> pList=new ArrayList();
		pList.add(new Person("제임스",55));
		pList.add(new Person("william",60));
	%>
	<c:set var="personList" value="<%=pList%>" scope="request" />
	<ul>
		<li>이름: ${requestScope.personList[0].name}</li>
		<li>나이: ${personList[0].age}</li>
	</ul>
	
	<h4>Map</h4>
	<%
		Map<String,Person> pMap= new HashMap();
		pMap.put("personArgs1",new Person("superman",65));
		pMap.put("personArgs2",new Person("batman",55));
	%>
	<c:set var="personMap" value="<%=pMap %>" scope="request" />
	<ul>
		<li>이름: ${requestScope.personMap.personArgs2.name}</li>
		<li>나이: ${personMap.personArgs2.age}</li>
	</ul>
</body>
</html>













