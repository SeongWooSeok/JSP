<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체</title>
</head>
<body>
	<h2>web.xml의 설정 읽기</h2>
	초기화 매개변수: <%=application.getInitParameter("INIT_PARAM") %>
	
	<h2>내장객체 함수</h2>
	물리적 경로:<%=application.getRealPath("/02ImplicitObject") %>
	
<%!
	public String useImpObj(){
		return this.getServletContext().getRealPath("/02ImplicitObject");
	}
	public String useImpObj(ServletContext app){
		return app.getRealPath("/02ImplicitObject");
	}
%>
	<ul>
		<li>1. <%=useImpObj() %></li>
		<li>2. <%=useImpObj(application) %></li>
	</ul>
</body>
</html>