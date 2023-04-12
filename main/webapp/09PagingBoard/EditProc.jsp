<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.BoardDTO" %>
<%@ page import="utils.AlertFunc" %>
<%
	String num=request.getParameter("num");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	BoardDTO dto=new BoardDTO();
	dto.setNum(num);
	dto.setTitle(title);
	dto.setContent(content);
	
	BoardDAO dao=new BoardDAO(application);
	int res = dao.updateEdit(dto);
	dao.close();
	
	if(res==1){
		response.sendRedirect("View.jsp?num="+dto.getNum());
	}else{
		AlertFunc.alertBack("수정하지 못했습니다.", out);
	}
%>