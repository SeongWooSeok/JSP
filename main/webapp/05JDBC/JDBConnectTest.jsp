<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBCConnect" %>
<%@ page import="common.JDBConnPool" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>JDBC connect test1</h2>
	<%
		JDBCConnect jdbc1 = new JDBCConnect();
		jdbc1.close();
	%>
	<h2>JDBC connect test2</h2>
	<%
				String driver="oracle.jdbc.OracleDriver";
				//db connect
				String url="jdbc:oracle:thin:@localhost:1521:xe";
				String id="seong";
				String pw="1234";
				JDBCConnect jdbc2 = new JDBCConnect(driver,url,id,pw);
				jdbc1.close();
	%>
		<h2>JDBC connect test3</h2>
	<%
		JDBCConnect jdbc3 =new JDBCConnect(application);
		jdbc3.close();
	%>
	<h2>JDBC Connection Pool test</h2>
	<%
		JDBConnPool pool = new JDBConnPool();
		pool.close();
	%>
</body>
</html>