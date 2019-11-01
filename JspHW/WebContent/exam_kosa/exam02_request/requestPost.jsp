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
			<h3>HTTP 내용 얻기(POST)</h3>
		</div>	
			
		<div>	
			<form method="post"  action="useRequest.jsp">
				param1:
				<input type="text" name="param1" value="value1"/> <br/>
				
				param2:
				<input type="checkbox" name="param2" value="value2" checked="checked"/>
				<input type="checkbox" name="param2" value="value3"/> <br/>
				
				<input type="submit" value="요청"/>
			</form>
		</div>
	</body>
</html>