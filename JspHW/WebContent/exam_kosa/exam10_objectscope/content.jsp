<%@ page contentType="text/html; charset=UTF-8"%>

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
			<h3>객체 저장 범위</h3>
		</div>
		
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				객체 저장범위의 종류
			</div>
			<div>
				1. 페이지 범위 : pageContext(해당 JSP에서만 사용) <br/>
				2. 요청 범위 : request(HttpServletRequest)<br/>
				3. 세션 범위 : session (HttpSession)<br/>
				4. 애플리케이션 범위 : application(ServletContext)<br/>
			</div>
			<hr>
		</section>
		
		<section class="bg-light" id="team">	
			<hr>
			<div class="text-success">
				요청(request) 범위
			</div>
			<div>
				<a class="btn-primary" style="font-size: 20px;" href="requestScope.jsp">요청1</a>
				<a class="btn-primary" style="font-size: 20px;" href="requestScope.jsp">요청2</a>
			</div>
			<hr>
		</section>
		
		<section class="bg-light" id="team">	
				<hr>
			<div class="text-success">
				세션(session) 범위
			</div>
			<div>
				<a class="btn-primary" style="font-size: 20px;" href="sessionScope.jsp">요청1</a>
				<a class="btn-primary" style="font-size: 20px;" href="sessionScope.jsp">요청2</a>
			</div>
			<hr>
		</section>
			
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				애플리케이션(application) 범위
			</div>
			<div>
				<a class="btn-primary" style="font-size: 20px;" href="applicationScope.jsp">요청1</a>
				<a class="btn-primary" style="font-size: 20px;" href="applicationScope.jsp">요청2</a>
			</div>
			<hr>
		</section>
		<section class="bg-light" id="team">
			<hr>
				<img  width="50%" height="50%" src="../../resources/images/page.png">
				<img  width="45%" height="45%" src="../../resources/images/request.png">
				<hr>
				<img  width="49%" height="49%" src="../../resources/images/session.png">
				<img  width="50%" height="50%" src="../../resources/images/application.png">
			<hr>
		</section>
	</body>
</html>













