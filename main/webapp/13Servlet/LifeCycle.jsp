<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet Life Cycle</title>
</head>
<body>
	<script>
		function getAction(frm){
			
			frm.method='get';
			frm.submit();
		}
		function postAction(frm){
			
			frm.method='post';
			frm.submit();
		}
		</script>
			<h2>서블릿 생명주기(Life cycle) 메서드</h2>
			<form action="<%=request.getContextPath()%>/LifeCycle.do">
				<input type="button" value="Get method call" onclick="getAction(this.form);"/>
				<input type="button" value="Post method call" onclick="postAction(this.form);"/>
			</form>
</body>
</html>