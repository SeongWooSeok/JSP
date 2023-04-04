<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체</title>
</head>
<body>
	<h2>클라이언트와 서버 정보</h2>
	<a href="./RequestInfo.jsp?eng=hello&kor=안녕">
		get method
	</a>
	<br>
	<form action="RequestInfo.jsp" method="post">
		Korean:<input type="text" name="kor" value="잘자." />
		English:<input type="text" name="eng" value="Good night."/>
		<input type="submit" value="POST method submit" />
	</form>
	
	<h2>클라이언트의 요청 매개 변수</h2>
	<form method="post" action="RequestParam.jsp">
		아이디:<input type="text" name="id" value=""/><br>
		성별:
		<input type="radio" name="gender" value="woman" checked="checked" />여자
		<input type="radio" name="gender" value="man"/>남자<br><br>
		관심사항:
		<input type="checkbox" name="inter" value="movie" checked="checked"/>영화
		<input type="checkbox" name="inter" value="music"/>음악
		<input type="checkbox" name="inter" value="food"/>음식
		<br>
		자기소개:
		<textarea rows="5" cols="30" name="intro"></textarea><br>
		<input type="submit" value="전송"/>		
	</form>
	
	<h2>HTTP 요청 헤더 정보</h2>
	<a href="RequestHeader.jsp">요청 헤더 정보</a>
</body>
</html>


