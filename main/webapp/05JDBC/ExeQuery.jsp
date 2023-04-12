<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="common.JDBConnPool" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조회</title>
</head>
<body>
	<h2>회원 목록 조회</h2>
<%
	//JDBConnect jdbc = new JDBConnect();
	JDBConnPool jdbc = new JDBConnPool();

	String sql="select id,pw,name,regdate from member";
	Statement stmt = jdbc.con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		String id=rs.getString(1);
		String pw=rs.getString(2);
		String name=rs.getString("name");
		java.sql.Date regdate = rs.getDate("regdate");
		System.out.println("here"+id+pw+name);
		out.println(String.format("%s %s %s %s",id,pw,name,regdate)+"<br>");
	}
	jdbc.close();	
%>
</body>
</html>





