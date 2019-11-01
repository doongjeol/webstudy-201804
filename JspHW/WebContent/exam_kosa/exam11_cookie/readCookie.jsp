<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.net.*"%>

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
			<h3>쿠키 읽기</h3>
		</div>
		<div>			
			<%
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies){
				out.print("쿠키명: "+cookie.getName()+" ");
				out.print("쿠키값: "+URLDecoder.decode(cookie.getValue(),"UTF-8"));
				out.print("<br/>");
			}
			%>
		</div>
	</body>
</html>