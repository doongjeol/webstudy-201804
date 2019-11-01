<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<%
request.setCharacterEncoding("UTF-8");

//시작행에 들어가는 정보 얻기
String method = request.getMethod();
String requestURI = request.getRequestURI();
String queryString = request.getQueryString();

//헤더의 값 얻기
String userAgent = request.getHeader("User-Agent");

//파라미터값 얻기
String[] param2 = request.getParameterValues("param2");
String param1 = request.getParameter("param1");
%>

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
			<h3>HTTP 내용 얻기</h3>
		</div>		
		
		<div>
			method: <%=method%> <br/>
			requestURI: <%=requestURI%> <br/>
			queryString: <%=queryString%> <br/>
			userAgent: <%=userAgent%> <br/>
			param1: <%=param1%> <br/>
			param2: <%=Arrays.toString(param2)%> <br/>
		</div>
	</body>
</html>