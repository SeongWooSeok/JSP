<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>
<%@ page import="board.BoardDto"%>
<%@ page import="utils.AlertFunc" %>

<%
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	
	BoardDto dto = new BoardDto();
	dto.setTitle(title);
	dto.setContent(content);
	dto.setId(session.getAttribute("UserId").toString());
	
	BoardDao dao = new BoardDao(application);
	int res = dao.insertWrite(dto);
	//int res=0;
	//for(int i =1; i<=132; i++){
	//	dto.setTitle(title+i);
	//	dto.setContent(content+i);
	//	res=dao.insertWrite(dto);
	//}
	dao.close();
	
	if(res==1){
		response.sendRedirect("List.jsp");
	}else{
		AlertFunc.alerBack("글쓰기가 입력되지 않았습니다.", out);
	}
%>