<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="../../resources/css/clean-blog.min.css" rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
			function receiveHtmlFragment(){
				$.ajax({
					url: "sendHtmlFragment.jsp",
					success: function(data){
						$("#div1").append(data);
					}
				});
			}
			
			function receiveJson(){
				$.ajax({
					url: "sendJson.jsp",
					success: function(data){
						var html = "";
						html+="<img ";
						html+="src='../../resources/images/"+data.src+"' ";
						html+="width='"+data.width+"' ";
						html+="height='"+data.height+"' ";
						html+="/>";
						$("#div2").append(html);
					}
				});
			}
		</script>
	</head>
	<body>
			<h3>AJAX</h3>
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
					비동기 방식의 UI 변경
			</div>
				<div class="sector_content">
					<button onclick="receiveHtmlFragment()" >HTML 조각 받아오기</button>
					<button onclick="receiveJson()" >JSON 데이터로 받아오기</button>
					<br><br/>
					<div id="div1"></div>
					<div id="div2"></div>
				</div>
			<hr>
		</section>
	</body>
</html>