<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>
<%@ page import="board.BoardDto"%>
<%@ page import="utils.AlertFunc" %>
<%
	String num = request.getParameter("num");
	
	BoardDao dao = new BoardDao(application);
	int res = dao.deletePost(num);
	dao.close();
	
	if(res==1){
		AlertFunc.alertLocation("삭제완료", "List.jsp", out);
	}else{
		AlertFunc.alerBack("삭제 실패", out);
	}
%>

