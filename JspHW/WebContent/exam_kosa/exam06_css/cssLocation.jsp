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
		<%-- 페이지 CSS --%>
		<style type="text/css">
			.pageCss {
				width:100px;
				height:100px;
				background-color:#00ff00
			}
		</style>
		
		<%-- 외부 CSS --%>
		<link rel="stylesheet" type="text/css" href="outside.css">
	</head>
	<body>
		<div>
			<h3>CSS 작성 위치</h3>
		</div>
		<div>	
			<h4>인라인 CSS(우선 순위가 가장 높다)</h4>
		</div>
		<div style="width:100px;height:100px;background-color:#ff0000"></div>
			<h4>페이지 CSS 적용</h4>
			<div class="pageCss"></div>
			<h4>외부 CSS 적용</h4>
			<button class="outFileCss"></button>
	</body>
</html>




