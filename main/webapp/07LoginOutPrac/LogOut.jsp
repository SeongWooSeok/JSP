<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//<session-timeout>30</session-timeout>
	//서버에 접속한 후 클라이언트가 요청을 보내지 않았을때 세션의 기본적인 유지시간은 30분
	//방법1 : 회원 인증 정보 속성 삭제
	session.removeAttribute("UserId");
	session.removeAttribute("UserName");
	
	//방법2 : 모든 속성 한꺼번에 삭제
	session.invalidate();
	
	//속성 삭제 후 페이지 이동
	response.sendRedirect("LoginForm");
%>