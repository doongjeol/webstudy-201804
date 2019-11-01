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
			function fun1() {
				var divs = document.querySelectorAll(".class1");
				console.log(divs);
				for(var i=0; i<divs.length; i++) {
					var div = divs[i];
					div.innerHTML = "내용";
					div.style.width="100px";
					div.style.height="100px";
					div.style.backgroundColor="#ff6699";
					div.style.border="1px solid #000000";
					div.style.display="inline-block";
				}
			}
			function fun2() {
				var divs = $(".class1");
				console.log(divs);
				divs.html("내용");
				divs.css({
					"width": "100px",
					"height": "100px",
					"background-color": "#99ff66",
					"border": "1px solid #000000",
					"diplay": "inline-block"
				});
			}
		</script>
	</head>
	<body>
		<div id="header">
			<h3>jQuery</h3>
		</div>	

		<div id="content">
			<div class="sector">
				<div class="sector_title">
					<h4>W3C DOM API와 jQquery API 사용상의 차이점</h4>
				</div>
				<div class="sector_content">
					<button class="button" onclick="fun1()">W3C DOM API 사용</button>
					<button class="button" onclick="fun2()">jQeury API 사용</button>
					<br/><br/>
					<div class="class1"></div>
					<div class="class1"></div>
					<div class="class1"></div>
				</div>
			</div>
		</div>
	</body>
</html>



