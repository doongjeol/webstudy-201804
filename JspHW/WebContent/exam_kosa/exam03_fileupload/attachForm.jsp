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
			<h3>파일 업로드 양식</h3>
		</div>	
		<div>
			<form method="post" 
				  action="fileUpload.jsp"
				  enctype="multipart/form-data">
				
				<%-- 문자 파트 --%>
				title:<input type="text" name="title"/> <br/>
				
				<%-- 문자 파트 --%>
				content:<textarea rows="5" cols="50" name="content"></textarea> <br/>
				
				<%-- 파일 파트 --%>
				attach:<input type="file" name="attach"/> <br/>				
				
				<input type="submit" value="요청"/>
			</form>
		</div>
	</body>
</html>