<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Controller-view</title>
</head>
<body>
	<h3>Controller-View</h3>
	${result}
	<p>URI:${uri}</p>
	<p>요청명: ${comStr}</p>
	<ul>
		<li><a href="../Servlet/regist.set">회원가입</a></li>
		<li><a href="../Servlet/login.set">로그인</a></li>
		<li><a href="../Servlet/board.set">게시판</a></li>
	</ul>

</body>
</html>