<%-- 지시자(directives) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>CSS3 응용과 레이아웃</title>
		<style>
			div.container1{
				overflow: hidden;
			}
			div.item1{
				float: left;
				
				margin : 0 3px;
				padding: 10px;
				border : 1px solid black;
			}
			
			#center *{
				margin:0; padding:0;
			}
			#center{
				margin : 0 auto;
				width:960px;
			}
			
			#onetrue{
				width : 500px;
				margin : 10px auto;
			}
			#middle{ overflow: hidden;}
			#left{ float: left; width : 150px ; background : red;}
			#right{ float: right; width : 350px ; background : blue;}
			#top{ background : green;}
			#bottom{ background : purple;}
			
			#container2 {
				width: 500px; height: 300px;
				border: 3px solid black;
				overflow: hidden;
				position: relative;
			}
			.circle{
				position: absolute;
				width: 100px; height: 100px;
				border-radius: 50% 50%;
			}
			#red{
				background: red;
				left: 20px; top: 20px;
			}
			#green{
				background: green;
				right: 20px; top: 20px;
			}
			#blue{
				background: blue;
				right: 20px; bottom: 20px;
			}
			#yellow{
				background: yellow;
				left: 20px; bottom: 20px;
			}
			
			#ex5 * {
				margin:0; padding:0;
			}
			#ex5{ 
				overflow: hidden;
				background:grey;
				height: 700px;
			}
			#container3{
				width:500px; height:250px;
				background:orange;
				
				position : absolute;
				left: 50%; top: 50%;
				margin-left: -250px;
				margin-top:-125px
			}
			.container2{
				margin-top : 50px;
				margin-left : 50px;
			}
			.top_bar{
				background : maroon;
				
				position: fixed;
				left: 0; top: 95%; right: 0;
				height: 50px;
			}
			.left_bar{
				background : navy;
				
				position : fixed;
				left: 95%; top: 0; bottom: 0;
				width: 50px;
			}
		</style>
	</head>
	<body>
		<h1>예제 5) 절대 위치를 사용한 요소를 중앙에 배치</h1>
		<div id="ex5">
			<div id="container3">
				<h2>절대 좌표를 사용한 중앙 정렬</h2>
			</div>
		</div>
		
		<h1>예제 1) 수평 정렬</h1>
		<p>끓는 못하다 피부가 것이다. 사랑의 보이는 앞이 불어 것이다. 인생을 곳이 가슴에 두기 봄바람이다. 얼음 눈에 같은 창공에 넣는 부패를 풍부하게 듣는다. 이상을 뜨거운지라, 피가 봄날의 것이다.</p>
		<div class="container1">
			<div class="item1">메뉴 - 1</div>
			<div class="item1">메뉴 - 2</div>
			<div class="item1">메뉴 - 3</div>
		</div>
		<p>곳으로 인생을 착목한는 얼음 관현악이며, 이성은 가장 말이다. 얼음과 크고 인간의 예가 이것이다. 그들은 살 것이 끓는다. 곳으로 웅대한 품고 원대하고, 청춘의 가치를 실로 뛰노는 사는가 교향악이다. 불어 가치를 자신과 그들은 미묘한 그들은 듣는다.</p>
		
		<h1>예제 2) 중앙 정렬 레이아웃</h1>
		<div id="center">
			<h2>주제</h2>
			<p>우리의 뛰노는 산야에 이상의 귀는 이상의 밥을 그림자는 따뜻한 것이다. 이상의 인간이 수 사람은 얼마나 노래하며 거친 어디 굳세게 아름다우냐? 갑 용감하고 청춘 노년에게서 못할 사막이다. 하는 피어나기 용감하고 속잎나고, 인도하겠다는 말이다. 무엇을 같은 봄바람을 위하여서. 있는 되는 같이, 끓는 그들은 싹이 실로 쓸쓸하랴? 뼈 그들은 봄날의 작고 들어 것이다.</p>
			<p>모래뿐일 있는 대한 긴지라 많이 열락의 것이다. 것은 피는 천하를 그들을 청춘에서만 우리의 꽃이 오직 것이다. 품에 현저하게 무한한 인생의 물방아 청춘 쓸쓸한 말이다. 것이 이것이야말로 찾아다녀도, 있는 피가 무한한 평화스러운 미인을 사막이다. 그들은 청춘의 생생하며, 옷을 싶이 심장은 노년에게서 사막이다.</p>
		</div>
		
		<h1>예제 3) One True 레이아웃</h1>
		<div id="onetrue">
			<div id="top">이상의 능히 앞이 동력은 인간의 힘차게 같은 칼이다. 청춘은 있는 찬미를 두손을 이것이야말로 이것이다. 예가 찬미를 뼈 얼음 하여도 행복스럽고 우리 같으며, 인도하겠다는 보라. 돋고, 이상, 않는 천고에 있는 끓는 봄바람이다. 위하여 수 품으며, 찾아다녀도, 그리하였는가?</div>
			<div id="middle">
				<div id="left">새 인간에 가치를 가진 것이다. </div>
				<div id="right">대한 바이며, 이상의 위하여, 간에 동산에는 끓는 눈에 수 그리하였는가? 귀는 이것은 같으며, 넣는 그들에게 대중을 일월과 장식하는 것이다. 동력은 튼튼하며, 원대하고, 열락의 있다. 목숨이 인간에 눈이 우리는 그들을 어디 뜨거운지라, 부패뿐이다. 몸이 붙잡아 것은 부패뿐이다. 안고, 설레는 보이는 품에 찾아다녀도, 쓸쓸하랴?</div>
			</div>
			<div id="bottom">가치를 인생을 무엇을 영락과 이것이다. 따뜻한 위하여, 가슴이 풀이 위하여, 생명을 청춘의 가장 뿐이다. 거친 보배를 방지하는 생생하며, 몸이 풀이 크고 우리 것이다. 고행을 부패를 튼튼하며, 그와 미묘한 위하여 피어나는 부패뿐이다. 꽃 그들에게 무한한 없는 사막이다.</div>
		</div>
		
		<h1>예제 4) 절대 위치를 사용해 요소 배치</h1>
		<div id="container2">
			<div id="red" class="circle"></div>
			<div id="green" class="circle"></div>
			<div id="blue" class="circle"></div>
			<div id="yellow" class="circle"></div>
		</div>
		
		<h1>예제 6) 고정 위치를 사용해 바 생성</h1>
		<div class="top_bar"></div>
		<div class="left_bar"></div>
		<div class="container2"></div>
			<p>위하여, 불러 때에, 이상, 그들의 피는 힘있다.</p>
			<p>동산에는 미묘한 품에 끓는 끓는다. 위하여, 트고, 할지니,</p>
			<p>아니더면, 가는 인생에 원질이 이상 장식하는 사막이다.</p>
			<p>구하기 청춘은 커다란 군영과 있는가? 간에 청춘의 위하여서, 소금이라 힘있다.</p>
			
		
	</body>
</html>
