<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>
<%@ page import="board.BoardDto"%>
<%@ page import="utils.AlertFunc" %>

<%
	String num=request.getParameter("num");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	BoardDto dto = new BoardDto();
	dto.setNum(num);
	dto.setTitle(title);
	dto.setContent(content);
	
	BoardDao dao = new BoardDao(application);
	int res = dao.updateEdit(dto);
	dao.close();
	
	if(res==1){
		response.sendRedirect("View.jsp?num=" + dto.getNum());
	}else{
		AlertFunc.alerBack("수정하지 못했습니다.", out);
	}
%>html>