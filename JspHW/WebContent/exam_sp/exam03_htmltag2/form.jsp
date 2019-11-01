<%-- 지시자(directives) --%>
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
		<title>Basic</title>
	</head>
	<body>
		<div>
		method : <%=method %> <br/>
		requestURI: <%=requestURI%> <br/>
		param1: <%=param1%> <br/>
		param2: <%=Arrays.toString(param2)%> <br/>
		</div>
	</body>
</html>
