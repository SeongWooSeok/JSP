<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 폼 전송 값</title>
</head>
<body>
	<h2>폼값 출력</h2>
	<ul>
		<li>${param.name}</li>
		<li>${param.gender}</li>
		<li>${param.grad}</li>
		<li>${paramValues.hobby[0]}
			${paramValues.hobby[1]}
			${paramValues.hobby[2]}
			${paramValues.hobby[3]}
			${paramValues.hobby[4]}
		</li>
	</ul>
</body>
</html>