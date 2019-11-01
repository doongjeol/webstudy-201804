<%@ page language="java" contentType="text/html; charset=UTF-8"%>

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
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type= "text/javascript"> 
			function loadFun() {				
				console.log("loadFun()");
				/* var btn1 = document.querySelector("#btn1");
				btn1.addEventListener("click", function() {
					console.log("btn1-click");
				});
				
				var btn2 = document.queryElementById("#btn2");
				btn2.addEventListener("click", function() {
					console.log("btn2-click");
				}); */
			}
			
			$(function() {
				console.log("11");
				$("#btn1").bind("click", function() {
					console.log("btn1-click");
				});
			});
			
			$(document).ready(function() {
				console.log("22");
				$("#btn2").click(function() {
					console.log("btn2-click");
				});
			});
				
		</script>
	</head>
	<body onload="loadFun()">
		<button id="btn1" class="button">버튼1</button>
		<button id="btn2" class="button">버튼2</button>
	</body>
</html>