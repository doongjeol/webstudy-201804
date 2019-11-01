<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*"%>

<%
Board board = (Board) session.getAttribute("board");
session.removeAttribute("board");
%>

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
	</head>
	<body>
		<div id="header">
			<h4 style="magin:30px; text-align: center; ">게시물 쓰기</h4>
		</div>
		<hr/>
		
		<div id="content">
			<form enctype="multipart/form-data" method="post" action="write.jsp">
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th>제목</th>
							<td>
								<input style="width:99%" name="title" type="text" class="form-control" id="title" placeholder="Enter title" value="<%=(board == null)?"":board.getTitle()%>">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea style="width:99%; margin: 0px" rows="5" name="content" class="form-control" id="content" placeholder="Enter content"><%=(board == null)?"":board.getContent()%></textarea>
							</td>
						</tr>
						<tr>
							<th>글쓴이</th>
							<td>
								<input style="width:99%" name="writer" type="text" class="form-control" id="writer" placeholder="Enter writer" value="<%=(board == null)?"":board.getWriter()%>">
							</td>
						</tr>
						<tr>
							<th style="width:50px">첨부</th>
							<td style="width:500px; text-align: left">
								<input name="attach" type="file" class="form-control" id="attach" placeholder="Select file">
							</td>
						</tr>
					</thead>
				</table>
				<div class="container">
        			<div class="row">
         				<div class="col-lg-12 text-center">
							<input class="btn-primary" style="font-size: 25px; margin-top: 10px" type="submit" class="btn btn-primary" value="쓰기">
						</div>
					</div>
				</div>
			</form>
			<%if(board != null) {%>
				<div style="margin-top: 20px">
					<span style="color: red">게시물이 정상적으로 입력되지 않았습니다. 다시 작성해 주세요.</span>
				</div>
			<%}%>
		</div>
	</body>
</html>