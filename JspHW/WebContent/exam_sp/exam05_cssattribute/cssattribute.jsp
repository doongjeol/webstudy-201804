<%-- 지시자(directives) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Basic</title>
	</head>
	<style>
		p:nth-child(6){ color : red; }
		p:nth-child(7){ font-size : 100%; }
		p:nth-child(8){ font-size : 150%; }
		p:nth-child(9){ font-size : 200%; }
		p:nth-child(10){ font-size : 1.0em; }
		p:nth-child(11){ font-size : 1.5em; }
		p:nth-child(12){ font-size : 2.0em; }
		p:nth-child(13){ font-size : 16px; }
		p:nth-child(14){ font-size : 24px; }
		p:nth-child(15){ font-size : 32px; }
		h2:nth-child(17){ background-color :red; }
		h2:nth-child(18){ background-color :rgb(100,100,100); }
		h2:nth-child(19){ background-color :rgba(100,100,100,0.5); }
		h2:nth-child(20){ color : white; background-color :#111111; }
		div:nth-child(22){ height : 500px; background-image:url('../exam02_htmltag/cat.png'); }
		div:nth-child(24){ 
			width : 100px; height : 100px;
			background-color : red;
			
			border : 20px solid black;
			margin : 10px; padding : 30px;
		 }
		 #box1 {
		 	display : inline;
		 	
		 	background-color : red;
		 	width : 100px; height :50px;
		 	margin : 10px;
		 }
		 #box2 {
		 	display : inline-block;
		 	
		 	background-color : red;
	 		width : 100px; height :50px;
		 	margin : 10px;
		 }
 		 #box3 {
		 	display : block;
		 	
		 	background-color : red;
		 	margin : 10px;
		 }
  		#box4 {
  			width : 500px ; height : 500px;
		 	background-image:url('../exam02_htmltag/cat.png');
		 	background-position: center;
		 	background-size: 90%;
		 	background-repeat: no-repeat;
		 	background-attachment: fixed;
		 	background-color:#E7E7E9;
		 }
		 #text{
		 	height : 70px;
		 	font-size : large;
		 	font-family : '나눔스퀘어 Light';
		 	font-weight : bold;
		 	font-style : italic;
		 	text-align : center;
		 	line-height : 70px;
		 }
		 #text2{text-decoration : none;}
		 
		 body > div:nth-child(3){
		 	width : 400px; height : 100px;
		 	border: 3px solid black;
		 	
		 	position : relative;
		 	overflow-y : scroll;
		 }
		
		 .box{
 		 	width : 100px; height : 100px;
		 	position : absolute;
		 }
		 .box:nth-child(1) { 
		 	background-color : red;
		 	left : 10px; top : 10px;
		 	z-index : 100;
		 }
		 .box:nth-child(2) { 
		 	background-color : blue;
		 	left : 50px; top : 50px;
		 	z-index : 10;
		 }
		 .box:nth-child(3) { 
		 	background-color : green;
		 	left : 90px; top : 90px;
		 	z-index : 1;
		 }
		 img{float : left;}
		 .box1{
 		 	width : 100px; height : 100px;
 		 	background-color: maroon;
 		 	margin : 10px; padding : 10px;
 		 	
 		 	float:left;
		 }
		 /* #shadow{text-shadow: 5px 5px 5px black} */
		 #box5{
		 	border : 3px solid black;
		 	box-shadow : 10px 10px 10px black, 10px 10px 20px orange, 10px 10px 30px red;
		 	text-shadow: 5px 5px 5px black
		 	
		 }
		 #box6{
		 	background: linear-gradient(to bottom, #1e5799 0%,#2989d8 50%,#207cca 51%,#7db9e8 100%);
		 }
	</style>
	<body>
		<h1>8) 위치 속성</h1>
		<h2>h2</h2>
		<div>
			<div class ="box"></div>
			<div class ="box"></div>		
			<div class ="box"></div>
		</div>
		<h2>h2</h2>
		
		<h1>1) 크기 단위</h1>
		<p>기본</p>
		<p>100%</p>
		<p>150%</p>
		<p>200%</p>
		<p>1.0em</p>
		<p>1.5em</p>
		<p>2.0em</p>
		<p>16px</p>
		<p>24px</p>
		<p>32px</p>
		
		<h1>2) 색상 단위</h1>
		<h2>기본 색상</h2>
		<h2>rgb색상</h2>
		<h2>rgba색상</h2>
		<h2>#000000</h2>
		
		<h1>3) url 단위</h1>
		<div>두둠칫</div>
		
		<h1>4) 박스 속성</h1>
		<div>두둠칫 두둠칫</div>
		
		<h1>5) display 속성 - inline</h1>
		<div id="box1">인라인</div>
		<h1>5) display 속성 - inline-block</h1>
		<div id="box2">인라인 블록</div>
		<h1>5) display 속성 - block</h1>
		<div id="box3">블록</div>
		
		<h1>6) 배경 속성</h1>
		<div id="box4">배경</div>
		
		<h1>7) 글자 속성</h1>
		<p id="text">꽃 그들의 소리다.이것은 끝까지 눈에 봄바람이다.</p>
		<a id="text2" href="#box1">인라인 요소로 가랏</a>
		
		<h1>9) Float 속성</h1>
		<img src="rilla.png"/>
		<p>그림자는 든 인간의 사라지지 어디 사랑의 내는 현저하게 관현악이며, 사막이다. 예수는 노래하며 몸이 그들의 어디 피가 아름다우냐? 못할 바이며, 충분히 미인을 굳세게 든 품으며, 목숨이 귀는 있는가? 같이 모래뿐일 할지니, 꾸며 어디 철환하였는가? 피고, 곳으로 위하여서, 있을 현저하게 생생하며, 그들에게 뛰노는 주는 부패뿐이다.</p>
		<p>이성은 속에 갑 이상을 긴지라 때까지 없으면, 것은 말이다. 위하여서 부패를 하는 같은 뛰노는 설산에서 속에 끓는 피다. 싸인 있음으로써 든 피고, 할지라도 무한한 말이다. 있는 것은 장식하는 수 것이다. 것이 속에 심장의 싶이 철환하였는가? 것은 없으면, 그것은 것이 뼈 이것은 구할 살 열락의 봄바람이다. 아름답고 눈이 힘차게 장식하는 관현악이며, 봄바람이다.</p>
		<div class="box1">1번</div>
		<div class="box1">2번</div>
		<p>아이들의 이런 소학교 추억과 버리었습니다. 아스라히 멀듯이, 무덤 남은 어머니, 쓸쓸함과 불러 마디씩 봅니다. 자랑처럼 이웃 언덕 봅니다. 이름을 가슴속에 내린 묻힌 가을로 까닭이요, 봅니다. 이 동경과 내 벌써 이웃 풀이 계절이 봅니다. 하나에 멀리 마디씩 듯합니다. 라이너 어머님, 같이 청춘이 걱정도 덮어 프랑시스 버리었습니다.</p>
		<p>하나에 너무나 강아지, 둘 별 계십니다. 어머니 밤이 사랑과 나의 별들을 까닭입니다. 새겨지는 당신은 하늘에는 듯합니다. 별빛이 하나에 다하지 한 걱정도 잔디가 노새, 경, 있습니다. 어머님, 그리워 그리고 무성할 쓸쓸함과 가을로 아이들의 나의 거외다. 우는 밤을 무덤 하나에 까닭입니다.</p>
		
		<h1>10) 그림자 속성</h1>
		<div id="box5">
			<h2 id="shadow">아직 한 이름자를 새워 벌써 하나 이런 아름다운 거외다</h2>
		</div>
		
		<h1>11) 그레디언트 속성</h1>
		<div id="box6">
			<h2>CSS3 그레디언트</h2>
		</div>
	</body>
	
</html>
