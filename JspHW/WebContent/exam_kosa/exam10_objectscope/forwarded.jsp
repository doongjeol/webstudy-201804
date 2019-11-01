<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.*"%>

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
			<h3 class="text-warning">범위 테스트</h3>
		</div>
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				요청 범위 테스트
			</div>
			<div>
				<% Counter counter = (Counter) request.getAttribute("counter"); %>
				<%if(counter!=null) {%>
					번호: <%=counter.getNumber() %>
				<%} else {%>
					Counter 객체가 없습니다
				<%} %>
			</div>
			<hr>
		</section>
			
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				세션 범위 테스트
			</div>
			<div>
				<% Counter counter2 = (Counter) session.getAttribute("counter"); %>
				<%if(counter2!=null) {%>
					번호: <%=counter2.getNumber() %>
				<%} else {%>
					Counter 객체가 없습니다
				<%} %>
			</div>
			<hr>
		</section>
		
		
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				애플리케이션 범위 테스트
			</div>
			<div>
				<% Counter counter3 = (Counter) application.getAttribute("counter"); %>
				<%if(counter3!=null) {%>
					번호: <%=counter3.getNumber() %>
				<%} else {%>
					Counter 객체가 없습니다
				<%} %>
			</div>
			<hr>
		</section>
	</body>
</html>