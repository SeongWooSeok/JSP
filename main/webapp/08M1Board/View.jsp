<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>
<%@ page import="board.BoardDto"%>
<%@ include file="./LoginCheck.jsp" %>
<%
	String num = request.getParameter("num");

	BoardDao dao = new BoardDao(application);
	dao.updateVisitCount(num);
	BoardDto dto = dao.getView(num);
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
	<h2>상세보기</h2>
	<script type="text/javascript">
		function delFunc(){
			let con=confirm("삭제하시겠습니까?");
			if(con){
				let form = document.viewForm;
				form.method="post";
				form.action="DeleteProc.jsp";
				form.submit();
			}
		}
	</script>
	<form action="" name="viewForm">
		<input type="hidden" name="num" value="<%=num%>"/>
		
		<table border="1" width="90%">
			<tr>
				<td>번호</td>
				<td><%=dto.getNum() %></td>
				<td>작성자</td>
				<td><%=dto.getName() %></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=dto.getPostdate() %></td>
				<td>조회수</td>
				<td><%=dto.getVisitcount() %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan="3"><%=dto.getTitle() %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%=dto.getContent() %></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<%
						if(session.getAttribute("UserId")!=null && session.getAttribute("UserId").toString().equals(dto.getId())){
					%>
						<button type="button" 
            			onclick="location.href='Edit.jsp?num=<%=dto.getNum()%>';">수정하기</button>
						<button type="button" onclick="delFunc();">삭제하기</button>
					<%
						}
					%>
						<button type="button" onclick="location.href='List.jsp'">목록보기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>