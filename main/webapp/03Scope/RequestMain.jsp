<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%@ page import="java.util.ArrayList" %>
<%
	request.setAttribute("rInteger", 4);
	request.setAttribute("rString", "request area String");
	request.setAttribute("rObject", new Person("우영우",28));
	String sel = request.getParameter("sel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 영역</title>
</head>
<body>
	<h2>forward 영역 속성 값</h2>
<%
	int rInt = (Integer)(request.getAttribute("rInteger"));
	Person rObj = (Person)(request.getAttribute("rObject"));
	request.removeAttribute("rInteger");
	System.out.println(request.getAttribute("rInteger"));
%>
	<ul>
		<li>숫자: <%=rInt %></li>
		<li>문자열: <%=request.getAttribute("rString") %></li>
		<li>객체: <%=rObj.getName() %>,<%=rObj.getAge() %></li>
	</ul>
<%
	if(sel != null){ 
		request.getRequestDispatcher("RequestForward.jsp?com=삼성&fill=yellow")
			.forward(request,response);
	}
%>
</body>
</html>