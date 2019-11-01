<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="../../resources/css/clean-blog.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>		
		<style type="text/css">
			.col-0 {
				display: none;
			}
		</style>
	</head>
	<body>
		<h3>부트스트랩-Layout</h3>
		<hr/><br/>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-4 col-md-6" style="background-color: #ff0000">div태그</div>
				<div class="col-sm-8 col-md-6" style="background-color: #00ff00">div태그</div>
			</div>
			<div class="row">
				<div class="d-sm-none d-md-block col-sm-0 col-md-4" style="background-color: #ff0000">div태그</div>
				<div class="col-sm-6 col-md-4" style="background-color: #00ff00">div태그</div>
				<div class="col-sm-6 col-md-4" style="background-color: #00ff00">div태그</div>
			</div>
		</div>
	</body>
</html>