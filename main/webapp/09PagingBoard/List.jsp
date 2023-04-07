<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDto" %>
<%@ page import="board.BoardDao" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="utils.PagingUtil" %>
<%
	BoardDao dao = new BoardDao(application);

	String findCol = request.getParameter("findCol");
	String findWord = request.getParameter("findWord");
	Map<String,Object> param = new HashMap<String, Object>();
	if(findWord!=null){
		param.put("findCol", findCol);
		param.put("findWord", findWord);
	}
	
	//페이징 처리를 위한 값
	int totalCount = dao.getTotalCount(param);
	int pageSize=Integer.parseInt(application.getInitParameter("PAGE_SIZE"));
	int blockSize=Integer.parseInt(application.getInitParameter("PAGING_BLOCK"));
	int totalPage=(int)Math.ceil((double)totalCount/pageSize);
	//페이지 초기값 및 현재 페이지 값
	int pageNum=1;
	String pageTemp=request.getParameter("pageNum");
	if(pageTemp!=null && !pageTemp.equals("")){
		pageNum=Integer.parseInt(pageTemp);
	}
	
	int start =(pageNum-1)*pageSize+1;
	int end =pageNum*pageSize;
	param.put("start", start);
	param.put("end", end);
	
	List<BoardDto> boardLists = dao.getListPage(param);
	dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/Top.jsp"/>
	<h2>목록 보기</h2>
	<!-- 검색 -->
	<form action="#" method="GET">
		<table border="1" width="90%">
			<tr>
				<td align="center">
					<select name="findCol">
						<option value="title">제목</option> 
						<option value="content">내용</option> 
					</select>
					<input type="text" name="findWord"/>
					<input type="submit" value="검색"/>
				</td>
			</tr>
		</table>
	</form>
	<!-- 목록 -->
	<table border="1" width="90%">
		<tr>
			<th>번호</th><th>제목</th><th>작성자</th><th>조회수</th><th>작성일</th>
		</tr>
		<%
			if(boardLists.isEmpty()){ //게시물 없는 경우
		%>
		<tr>
			<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
		</tr>
		<%
			}else{ //게시물이 있는 경우
				for(BoardDto dto : boardLists){
		%>
		<tr align="center">
			<td align="center"><%=dto.getNum() %></td>
			<td align="left">
				<a href="View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle() %></a>
			</td>
			<td align="center"><%=dto.getId() %></td>
			<td align="center"><%=dto.getVisitcount() %></td>
			<td align="center"><%=dto.getPostdate() %></td>
		</tr>
		<%
				}
			}
		%>
		</table><br>
	<table border="1" width="90%">
		<tr align="center">
			<td>
			<%=PagingUtil.pagingCenter(totalCount, pageSize, blockSize, pageNum, request.getRequestURI()) %>
			</td>
		</tr>
	</table>
	<br>
	<div align="center">
		<button type="button"  onclick="location.href='Write.jsp';" >>글쓰기</button>
	</div>
</body>
</html>