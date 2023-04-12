<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 폼처리</title>
</head>
<body>
	<form name="frm" method="post" action="FormResult.jsp">
		<label>이름</label>
		<input type="text" name="name"/><br>
		<label>성별</label>
		<input type="radio" name="gender" value="man" />남자
		<input type="radio" name="gender" value="woman" />여자
		<br>
		<label>학력</label>
		<select name="grad">
			<option value="ele">초졸</option>
			<option value="mid">중졸</option>
			<option value="high">고졸</option>
			<option value="uni">대졸</option>
		</select>
		<br>
		<label>취미</label>
		<input type="checkbox" name="hobby" value="run" />달리기
		<input type="checkbox" name="hobby" value="book" />독서
		<input type="checkbox" name="hobby" value="movie" />영화관람
		<input type="checkbox" name="hobby" value="dance" />춤
		<input type="checkbox" name="hobby" value="gym" />헬스
		<input type="submit" value="제출" />
	</form>
</body>
</html>