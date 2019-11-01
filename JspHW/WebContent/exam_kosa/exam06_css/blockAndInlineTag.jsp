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
			.blockElement {
				height: 50px;
				background-color: #ff0000;
				border: 1px solid white
			}
			
			.inlineBlockElement {
				width: 100px;
				height: 100px;
				border: 1px solid red;
				background-color: #00ff00;
			}
			
			.inlineElement {
				width: 100px;
				height: 100px;
				background-color: #00ff00;
				border: 1px solid blue;
				/* display: inline-block; */
			}
		</style>
	</head>
	<body>
		<div>
			<h3 style="margin-bottom: 20px;">블록 요소와 인라인 요소</h3>
			<h4 style="margin: 20px;">블록 요소: 한 행 전체를 차지</h4>
		</div>
		<div>
			<div class="blockElement">div</div>
			<p  class="blockElement">p</p>
			<h1  class="blockElement">h1</h1>
			<ul class="blockElement">ul</ul>
		</div>
		<div>
			<h4 style="margin: 20px;">인라인 블록 요소: 자신의 크기만큼 차지, Width/Height 줄수 있다</h4>
		</div>
		<div>
			<button class="inlineBlockElement">버튼</button>
			<button class="inlineBlockElement">버튼</button>
		</div>
		<div>
			<div>
				<h4 style="margin: 20px;">인라인 요소: 자신의 크기만큼 차지, Width/Height 줄수 없다</h4>
			</div>
			<div>
				<a class="inlineElement">링크</a>
				<a class="inlineElement">링크</a>
			</div>
		</div>
	</body>
</html>


