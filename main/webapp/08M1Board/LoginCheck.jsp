<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.AlertFunc"%>
<%
	if(session.getAttribute("UserId")==null){
		AlertFunc.alertLocation("로그인이 필요합니다.", "../07LogInOutPrac/LoginForm.jsp", out);
		return;
	}
%>