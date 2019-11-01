<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*, service.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	</head>
	<body>
		<div id="header">
			<h3>JSTL(JSP 표준 태그 라이브러리)</h3>
		</div>
		<div id="content">
			[예전 표현식 사용방법1] <br/>
			<%
			String key1 = (String) request.getAttribute("key1");
			String key2 = (String) session.getAttribute("key2");
			String key3 = (String) application.getAttribute("key3");
			%>
			key1: <%=key1 %> <br/>
			key2: <%=key2 %> <br/>
			key3: <%=key3 %> <br/><br/>
			
			[EL 사용] <br/>
			key1: ${key1} <br/>
			key2: ${key2} <br/>
			key3: ${key3} <br/><br/>
			
			[JSTL 사용 - if] <br/>
			게시물 제목: ${key4.title}<br/>
			게시물 내용: ${key4.content}<br/><br/>
			
			<c:if test="${key5!=null}">로그인 됨</c:if>
			<c:if test="${key5==null} ">로그인 안됨</c:if><br/><br/>
			
			[JSTL 사용 - forEach] <br/>
			<form>
				<c:forEach var="item" items="${key6}">
					<input type="checkbox" name="job" value="${item}">${item}
				</c:forEach>
			</form>
			<c:forEach var="item" items="${key6}" varStatus="status">
				<c:if test="${status.first}">
					<form></form>
				</c:if>
					${status.count}.<input type="checkbox" name="job" value="${item}">${item}
				<c:if test="${status.last}">
					<form></form>
				</c:if>
			</c:forEach>
			
			<c:forEach begin="1" end="9" step="1" varStatus="status">
				<img src="../../resources/images/photo${status.count}.jpg" width="150px" height="100px">
			</c:forEach>
			<br/>
			<table class="table table-hover">
			  	<thead class="thead-dark">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">글쓴이</th>
						<th scope="col">날짜</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
						<c:forEach  var="board" items="${key7}" >
							<tr>
								<td>${board.bno}</td>
								<td>${board.title}</td>
								<td>${board.writer}</td>
								<td>${board.bdate}</td>
								<td>${board.hitcount}</td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>