<%-- 지시자(directives) --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");

//시작행에 들어가는 정보 얻기
String method = request.getMethod();
String requestURI = request.getRequestURI();
String queryString = request.getQueryString();

//헤더의 값 얻기
String userAgent = request.getHeader("User-Agent");

//파라미터값 얻기
String[] param2 = request.getParameterValues("param2");
String param1 = request.getParameter("param1");
%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Multimedia Tag & Input Tag</title>
		<link href="http://vjs.zencdn.net/c/video-js.css" rel = "stylesheet">
		<script src="http://vjs.zencdn.net/c/video-js.css"></script>
	</head>
	<body>
		<h1>1) 오디오 태그</h1>
		<audio src="sample.mp3" controls="controls" autoplay="autoplay"></audio>
		<audio controls="controls">
			<source src="sample2.ogg" type="audio/ogg" />
		</audio>
		
		<h1>2) 비디오 태그</h1>
		<video controls="controls" poster="../exam02_htmltag/cat.png" width="640" height="360" class = "video-js vjs-default-skin" data-setup"{}">
			<source src="bes.mp4" type="video/mp4" />
		</video>
		
		<h1>3) 입력 양식 태그</h1>
		
		<h2>사용자가 입력하는 입력 방식</h2>
		<form>
		<label for="text">텍스트 </label><input id="text" type="text" name ="text" value="text"/></br>
		<label for="password">패스워드 </label><input id="password" type="password" name ="password" value="password"/></br>
		<label for="file">파일 </label><input id="file" type="file" name ="file" value="file"/></br>
		<label for="checkbox">체크박스 </label><input id="checkbox" type="checkbox" name ="checkbox" value="checkbox"/></br>
		<label for="radio">라디오 </label><input id="radio" type="radio" name ="radio" value="radio"/>
		<input id="radio" type="radio" name ="radio" value="radio"/></br>
		</form>
		
		<h2>보이지 않는 입력 방식</h2>
		<form>
		<input type="hidden" name ="hidden" value="hidden"/></br>
		</form>
		
		<h2>버튼 방식</h2>
		<input type="button" value="button"/></br>
		<input type="reset" value="reset"/></br>
		<input type="submit" value="submit"/></br>
		<input type="image" src="../exam02_htmltag/cat.png" width="50" height="50"/></br>
		
		<h2>Text Area</h2>
		<textarea>Textarea태그
Textarea태그</textarea>
		
		<h2>Select</h2>
		<select>
		<optgroup label="떡볶이체고">
			<option>김밥</option>
			<option>떡볶이</option>
			<option>순대</option>
			<option>튀김</option>
		</optgroup>
		</select>
		
		<h2>Fieldset</h2>
		<fieldset><legend>입력 양식</legend><div></div></fieldset>
		
		
		<h2>get 방식</h2>
		<div><b>Ex03을 클릭할 때 접속하는 url : "../../exam_sp/exam03_htmltag2/htmltag2.jsp?<b/><b style="color : blue;">param1=value1&param2=value2&param2=value3</b></div>
		<div>
			method : <%=method %> <br/>
			requestURI: <%=requestURI%> <br/>
			queryString: <%=queryString%> <br/>
			param1: <%=param1%> <br/>
			param2: <%=Arrays.toString(param2)%> <br/>
		</div> <br/>
		
		<h2>get 방식2</h2>
		<form method="get" action="form.jsp">
			param1:
			<input type="text" name="param1" value="getparam1"/> <br/>
			<input type="submit" value="요청"/>
		</form>
		
		<h2>post 방식</h2>
		<form method="post" action="form.jsp">
			param1:
			<input type="text" name="param1" value="value1"/> <br/>
			param2:
			<input type="checkbox" name="param2" value="value2" checked="checked"/>
			<input type="checkbox" name="param2" value="value3"/> <br/>
			<input type="submit" value="요청"/>
		</form>
	</body>
</html>
