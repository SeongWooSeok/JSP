<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.List"%>
<%@page import="fileUpDown.MyFileDto"%>
<%@page import="fileUpDown.MyFileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>파일 목록 보기</h2>
	<a href="FileUploadMain.jsp">파일 등록</a>
<%
	MyFileDao dao = new MyFileDao();
	List<MyFileDto> fileLists =dao.myFileList();
	dao.close();
%>
	<table border="1">
		<tr>
			<th>No</th><th>작성자</th><th>제목</th><th>카테고리</th><th>원본파일명</th><th>저장된 파일명</th><th>작성일</th><th></th>
		</tr>
		<%for(MyFileDto f :fileLists){ %>
			<tr>
				<td><%=f.getIdx() %></td>
				<td><%=f.getName() %></td>
				<td><%=f.getTitle() %></td>
				<td><%=f.getCate() %></td>
				<td><%=f.getOfile() %></td>
				<td><%=f.getNfile() %></td>
				<td><%=f.getRegdate() %></td>
				<td><a href="Download.jsp?oName=<%=URLEncoder.encode(f.getOfile(),"UTF-8") %>&nName=<%=URLEncoder.encode(f.getNfile(),"UTF-8")%>">[다운로드]</a></td>
			</tr>
		<%} %>
	</table>
</body>
</html>