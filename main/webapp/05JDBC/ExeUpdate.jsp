<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가수정삭제</title>
</head>
<body>
	<h2>회원 추가</h2>
<%
	JDBConnect jdbc = new JDBConnect();

	String id="test1";
	String pw="9999";
	String name="시험대상1";
	
	String sql="insert into member values(?,?,?,sysdate)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1,id);
	psmt.setString(2,pw);
	psmt.setString(3,name);
	// setInt(index, value) / setDate() / setString()
	
	int res = psmt.executeUpdate();
	out.println(res+"행 입력");
	
	jdbc.close();	
%>
</body>
</html>



