<%-- 지시자(directives) --%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="../../resources/css/clean-blog.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div>
			<h3>자바 코드 사용</h3>
		</div>
	
		<div>
			<%-- Scriptlet --%>
			<%
			Calendar calendar = Calendar.getInstance();
			int year = calendar.get(Calendar.YEAR);
			int month = calendar.get(Calendar.MONTH + 1);
			int date = calendar.get(Calendar.DAY_OF_MONTH);
			%>
			
			<%-- 표현식(expressions) --%>
			<%=year%>년 <%=month%>월 <%=date%>일
		</div>
	</body>
</html>