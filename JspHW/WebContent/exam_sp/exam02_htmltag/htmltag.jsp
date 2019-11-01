<%-- 지시자(directives) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Basic</title>
	</head>
	<body>
		<h1>1) 글자 태그 - 제목 글자 태그</h1>
		<h1>제목 글자 태그 1</h1>
		<h2>제목 글자 태그 2</h2>
		<h3>제목 글자 태그 3</h3>
		<h4>제목 글자 태그 4</h4>
		<h5>제목 글자 태그 5</h5>
		<h6>제목 글자 태그 6</h6><br/>
		
		<h1>1) 글자 태그 - 하이퍼링크</h1>
		<a href="#alpha">Alpha부분으로 이동</a>
		
		<h1>1) 글자 태그 - 본문 태그</h1>
		<p>P태그 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)
		</p>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)
		</p>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)
		</p>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)
		</p>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)
		</p>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)
		</p>
		
		<br/>
		<hr/>
		<h1>1) 글자 태그 - 하이퍼링크</h1>
		<a href="https://www.google.com/">구글</a>
		<h1 id=alpha>Alpha</h1><br/>
		
		<h1>1) 글자 태그 - 글자 모양 태그</h1>
		<b>굵은 글자</b> <br/>
		<i>기울어진 글자</i> <br/>
		<small>작은 글자</small> <br/>
		<sub>아래 첨자</sub> <br/>
		<sup>위 첨자</sup> <br/>
		<ins>밑줄 글자</ins> <br/>
		<del>가운데 줄이 그어진 글자 (취소선)</del> <br/>
		
		<h1>2) 목록 태그</h1>
		<ul>
			<li>사과</li>
			<li>바나나</li>
			<li>오렌지</li>
		</ul>
		
		<ol>
			<li>사과</li>
			<li>바나나</li>
			<li>오렌지</li>
		</ol><br/>
		
		<h1>3) 테이블 태그</h1>
		<table border="1">
			<thead style="color : red;">
				<tr>
					<td>(헤더) thead 태그 내부</td>
					<td>(헤더) thead 태그 내부</td>
				</tr>
			</thead>
			<tbody style="color : gray;">
				<tr>
					<td>(행1) tbody 태그 내부</td>
					<td>(행1) tbody 태그 내부</td>
				</tr>
				<tr>
					<td>(행2) tbody 태그 내부</td>
					<td>(행2) tbody 태그 내부</td>
				</tr>
			</tbody>
			<tr>
				<th colspan="2"> 지역별 홍차 </th>
			</tr>
			<tr>
				<th rowspan="3"> 중국 </th>
				<td>정산소송</td>
			</tr>
			<tr><td>기문</td></tr>
			<tr><td>운남</td></tr>
			<tfoot style="color : blue;">
				<tr>
					<td>(꼬리) tfoot 태그 내부</td>
					<td>(꼬리) tfoot 태그 내부</td>
				</tr>
			</tfoot>
		</table>
		<br/>
		
		<h1>4) 이미지 태그</h1>
		<img src = "cat1.png" alt="냥이가 없습니당" width="100" height="100"/>
		<img src="http://placehold.it/300x300"/>
		
		<h1>5) 공간 분할 태그</h1>
		<div>div 태그 - block 형식</div>
		<div>div 태그 - block 형식</div> <br/>
		<span>span 태그 - inline 형식</span>
		<span>span 태그 - inline 형식</span> <br/>
	</body>
</html>
