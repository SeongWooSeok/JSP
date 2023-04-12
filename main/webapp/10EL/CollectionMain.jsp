<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Collection</title>
</head>
<body>
	<h2>List</h2>
<%
	List<Object> alist = new ArrayList<Object>();
	alist.add("한양");
	alist.add(new Person("이방원",45));
	pageContext.setAttribute("city", alist);
%>
	<ul>
		<li>${city[0]}</li>
		<li>${city[1].name},${city[1].age}</li>
		<li>${city[2]}</li>
	</ul>
	<h2>Map</h2>
<%
	Map<String,String> map=new HashMap();
	map.put("훈민정음","세종대왕");
	map.put("city","seoul");
	pageContext.setAttribute("kor", map);
%>
	<ul>
		<li>${kor["city"]},${kor.city}</li>
		<li>${kor['훈민정음']}</li>	
	</ul>
</body>
</html>

















