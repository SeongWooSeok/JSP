<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDao"%>
<%@ page import="board.BoardDto"%>
<%@ include file="./LoginCheck.jsp" %>
<%
	String num = request.getParameter("num");

	BoardDao dao = new BoardDao(application);
	BoardDto dto = dao.getView(num);
	String sessionId = session.getAttribute("UserId").toString();
	if(!sessionId.equals(dto.getId())){
		AlertFunc.alerBack("작성자 본인이 아닙니다.", out);
		return;
	}
	dao.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
</head>
<body>
	<jsp:include page="../common/Top.jsp"/>
	<h2>수정하기</h2>
	<form action="EditProc.jsp" name="deitForm" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
		<table border="1" width="90%">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" style="width:90%" value="<%=dto.getTitle() %>"/>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="content" style="width:90%; height:100px;">
						<%=dto.getContent() %>
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">작성완료</button>
					<button type="reset">초기화</button>
					<button type="button" onclick="location.href='List.jsp'">목록보기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>