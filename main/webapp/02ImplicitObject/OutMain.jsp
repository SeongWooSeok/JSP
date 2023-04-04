<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 내장객체</title>
</head>
<body>
<%
	out.print("출력되지 않는 텍스트/버퍼에 저장");
	out.clearBuffer();//버퍼를 비움
	
	out.print("<h2>out 내장객체</h2>");
	
	//버퍼 크기 확인
	out.print("출력 버퍼의 크기: "+out.getBufferSize()+"<br>");
	out.println("남은 버퍼의 크기: "+out.getRemaining());
	
	out.flush();
	out.print("남은 버퍼의 크기: "+out.getRemaining()+"<br>");
	
	out.print(1);
	out.print(false);
	out.print('가');
%>
</body>
</html>