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
		
		<style type="text/css">
			<%-- 태그 이름 선택자 --%>
			section {
				width:100px;
				height:100px;
				background-color: #ff0000;
				border: 1px solid #000000;
				display: inline-block;
			}
			
			<%-- ID 선택자 --%>
			#div1 {
				background-color: #00ff00;
			}
			#div2 {
				background-color: #0000ff;
			}
			
			<%-- class 선택자 --%>
			.class1 {
				background-color: #00ffff;
			}
			
			.btn {
				border: 1px solid black;
				height: 50px;
				width: 100px;
				display: inline-block;
			}
			.success {
				background-color: #00ff00;
				color: #ffffff
			}
			.warning {
				background-color: #ff0000;
				color: #00ff00
			}
		</style>
	</head>
	<body>
		<h3>CSS 선택자</h3>
		
		<h4>태그 이름 선택자</h4>
		<section>section 태그</section>
		<section>section 태그</section>
		<section style="margin-bottom: 30px;">section 태그</section>
		
		<h4>ID 선택자</h4>
		<div id="div1">div 태그</div>
		<div id="div2" style="margin-bottom: 30px;">div 태그</div>
			
		<h4>class 선택자</h4>
		<div class="class1">div 태그</div>
		<div class="class1">div 태그</div>
		<p>		
			<a class="btn success">OK</a>
			<a class="btn warning">Cancel</a>
		</p>
				
	</body>
</html>