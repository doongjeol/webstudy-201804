<%-- 지시자(directives) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>css3 selector</title>
		<style>
			* { color : grey; }
			h1{ color: black; }
			p,h2,h3,h4,h5,h6{ margin:0; padding:0;}
			
			#division {
				width : 800px;
				margin : 0 auto;
				background : skyblue;
				overflow : hidden;
			}
			.select{
				color : purple;
			}
			input[type="text"] {
				background : blue;
				width : 100px;
			}
			input[type="password"] {
				background: green;
				width : 400px;
			}
			#div1 h1 {color:#F74343;}
			#div2 h1 {color:orange;}
			#div3 > h1 {color:#3F51B5;}
			#response:hover {color:white;}
			#enable:enabled{background-color:gray;}
			#enable:focus{background-color:orange;}
			#disable:disabled{background-color:black;}
			
			.li {
				list-style : none;
				float : left;
				padding: 15px;
				color : white;
			}
			.li:first-child {border-radius : 10px 0 0 10px;}
			.li:last-child {border-radius : 0 10px 10px 0;}
			.li:nth-child(2n) {background-color : #FF0003;}
			.li:nth-child(2n+1) {background-color : #800000;}
			.li2:first-child >a {color:red;}
		</style>
	</head>
	<body>
		<h1>1-1) 전체 선택자(*) : grey 적용</h1>
		
		<h1>1-2) 태그 선택자 : h1에 black 적용</h1>
		<p>것은 방황하여도, 끓는 목숨을 얼음과 대한 살 할지니, 노년에게서 사막이다. 방황하였으며, 그들은 가는 우리는 피가 예수는 끓는 꽃이 봄바람이다. 얼마나 인생의 눈에 약동하다. 관현악이며, 남는 우리의 끓는다.</p>
		<h2>스패로우</h2>
		<h3>스패로우</h3>
		<h4>스패로우</h4>
		<h5>스패로우</h5>
		<h6>스패로우</h6>
		
		<h1>1-3) 아이디 선택자(#) : division 아이디에 4가지 css 적용</h1>
		<div id="division"> 
			<h1>#id division</h1>
		</div>
		
		<h1>1-4) class 선택자 : select 클래스에 purple 적용</h1>
		<ul>
			<li class="select">사과</li>
			<li>바나나</li>
			<li class="select">오렌지</li>
			<li>감</li>
		</ul>
		
		<h1>2) 속성 선택자 : input태그 속성마다 css 다르게 적용</h1>
		<form>
			<input type="text"/>
			<input type="password"/>
		</form>
		
		<h1>3) 후손 선택자 : div1 아이디의 후손 h1에 지정색 적용</h1>
		<div id="div1">
			<h1 class="title">Lorem ipsum</h1>
			<div id="nav">
				<h1>Navigation</h1>
			</div>
		</div>
		
		<h1>3-1) 후손 선택자2 : div2 아이디의 후손 h1에 지정색 적용</h1>
		<div id="div2">
			<h1 class="title">Lorem ipsum</h1>
			<div id="nav">
				<p>소금이라 목숨을 내려온 가장 것이다. 하는 이상을 돋고, 보는 열락의 시들어 칼이다. 설레는 뼈 반짝이는 따뜻한 대한 영락과 사막이다. 남는 없으면, 같으며, 이상은 웅대한 것이다. 날카로우나 소담스러운 장식하는 위하여, 뼈 할지니, 않는 싹이 말이다. 것은 천하를 소담스러운 원질이 새가 품에 대고, 것은 것이다.</p>
			</div>
		</div>
		
		<h1>3-2) 자손 선택자 : div3 아이디의 자손 h1에 지정색 적용</h1>
		<div id="div3">
			<h1 class="title">자손 h1에만 css적용됨</h1>
			<div id="nav">
				<h1>h1 Navigation</h1>
				<h3>h3 Navigation</h3>
			</div>
		</div>
		
		<h1>4-1) 반응 선택자 : response 아이디에 마우스를 올리면 css적용</h1>
			<h2 id="response">반응 선택자</h2>
		<h1>4-2) 상태 선택자 : input 태그 상태에 따라 css적용</h1>
			<label for="enable">enable :</label><input id="enable" />
			<label for="disable">disable :</label><input id="disable" disabled="disabled"/>
		
		<h1>5) 구조 선택자</h1>
			<ul>
				<li class="li">첫번째</li>
				<li class="li">두번째</li>
				<li class="li">세번째</li>
				<li class="li">네번째</li>
				<li class="li">다섯번째</li>
				<li class="li">여섯번째</li>
				<li class="li">일곱번째</li>
			</ul></br></br>
		<h1>5) 구조 선택자 주의 사항</h1>
			<ul>
				<li class="li2"><a href="#">주의 사항</a></li>
				<li class="li2"><a href="#">주의 사항</a></li>
				<li class="li2"><a href="#">주의 사항</a></li>
			</ul>
			
			
	</body>
</html>
