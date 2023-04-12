<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.ManageCookie" %>
<%@ page import="utils.AlertFunc" %>
<%
	String user_id=request.getParameter("user_id").trim();
	String user_pw=request.getParameter("user_pw").trim();
	String save_check=request.getParameter("save_check");

	if("user".equals(user_id) && "1234".equals(user_pw)){
		//로그인 성공
		if(save_check!=null&&save_check.equals("Y")){
			ManageCookie.makeCookie(response, "loginId", user_id, 86400);
		}else{
			ManageCookie.deleteCookie(response, "loginId");
		}
		AlertFunc.alertLocation("로그인에 성공했습니다.","IdSaveMain.jsp",out);
	}else{
		//로그인 실패
		AlertFunc.alertBack("로그인에 실패했습니다.",out);	
	}
%>





