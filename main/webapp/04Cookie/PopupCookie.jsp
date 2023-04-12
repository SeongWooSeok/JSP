<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String chk=request.getParameter("inactive");
	if(chk!=null && chk.equals("1")){
		Cookie cookie=new Cookie("popupMode","off");
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		out.print("쿠키:하루동안 안열기");
	}
%>