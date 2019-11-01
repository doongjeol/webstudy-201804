<%@ page contentType="text/html; charset=UTF-8" %>

<%
String mid = (String) request.getAttribute("mid");
int bno = (Integer) request.getAttribute("bno");
%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="resources/css/content.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	</head>
	<body>
		mid:<%=mid %><br/>
		bno:<%=bno %>		
	</body>
</html>