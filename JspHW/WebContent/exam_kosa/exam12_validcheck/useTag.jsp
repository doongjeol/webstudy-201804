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
		
					
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
			function send() {
				var form1 = document.querySelector("#form1");
				form1.submit();
			}
		</script>
	</head>
	<body>
		<div id="header">
			<h3>폼 전송</h3>
		</div>
		<div id="content">
			<form id="form1" method="post" action="receiveData.jsp">
				제목: <input type="text" name="title"/> <br/>
				내용: <input type="text" name="content"/> <br/>
				<%-- 전송 기능이 없는 버튼 --%>
				<input type="button" value="input 버튼"" onclick="send()"/>
				<%-- 전송 기능이 있는 버튼들 --%>
				<input type="submit" value="submit 버튼" />
				<input type="image" src="../../resources/images/button.png"/>
				<button>button 버튼</button>
			</form>
		</div>
	</body>
</html>