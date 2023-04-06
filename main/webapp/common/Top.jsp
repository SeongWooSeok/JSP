<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="1" width="90%">
	<tr>
		<td align="center">
		<% if(session.getAttribute("UserId")==null){ %>
			<a href="../07LoginOutPrac/LoginForm.jsp">로그인</a>
		<% }else{ %>
			<a href="../07LoginOutPrac/Logout.jsp">로그아웃</a>
		<% } %>
		<a href="../08M1Board/List.jsp">게시판</a>
		</td>
	</tr>
</table>