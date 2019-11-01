<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="/..../resources/css/clean-blog.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type= "text/javascript"> 
			$(function() {
				console.log($("div, p"));
				console.log($("div p"));
				console.log($("div > p"));
				console.log($("#div2 p"));
				
				/* var checkedHobby = [];
				var hobbyInputs = document.querySelectorAll(".hobby");
				console.log(hobbyInputs);
				for(var i=0; i<hobbyInputs.length; i++) {
					if(hobbyInputs[i].checked == true) {
						checkedHobby.push(hobbyInputs[i]);
						hobbyInputs[i].style.display = "inline-block";
						hobbyInputs[i].style.width = "30px";
						hobbyInputs[i].style.height = "30px";
					} 
				}
				console.log(checkedHobby); */
				//-----------------------------------
				/* checkedHobby = document.querySelectorAll(".hobby[checked]");
				for(var i=0; i<checkedHobby.length;i++) {
					hobbyInputs[i].style.display = "inline-block";
					hobbyInputs[i].style.width = "30px";
					hobbyInputs[i].style.height = "30px";
				} */
				//-----------------------------------
				checkedHobby = $(".hobby[checked=true]");
				checkedHobby.css({
					"display":"inline-block", "width":"30px", "height":"30px"});
				console.log(checkedHobby);
			});
		</script>
	</head>
	<body>
		<div id="header">
			<h3>jQuery</h3>
		</div>
		<div id="content">
			<div id ="div1">
				<p id="div1-p1"></p>
				<p id="div1-p2"></p>
				<section>
					<p id="div1-p2-p1">
					<p id="div1-p2-p2">
				</section>
			</div>
			
			<div id ="div2">
				<p id="div2-p1"></p>
				<p id="div2-p2"></p>
			</div>
		</div>
		<p id="p1"></p>
		<p id="p2"></p>
		
		<input class="hobby" type="checkbox" value="프로그래밍" checked="true"/>프로그래밍
		<input class="hobby" type="checkbox" value="드론 조종" checked="true"/>드론 조종
		<input class="hobby" type="checkbox" value="잠자기" checked="false"/>잠자기
	</body>
</html>



















