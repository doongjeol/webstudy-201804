<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*, service.*"%>

<%
int bno = Integer.parseInt(request.getParameter("bno"));
BoardService boardService = BoardService.getInstance();
Board board = boardService.findByBno(bno);
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
	<body>
		<div>
			<h4 style="magin:30px; text-align: center; ">게시물 변경</h4>
		</div>
		<hr/>
		
		<div >
			<form enctype="multipart/form-data" method="post" action="update.jsp">
				<input type="hidden" name="bno" value="<%=board.getBno()%>"/>
				<table class="table table-hover">
					<thead class="thead-dark" style="text-align: center;">
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
							<th >첨부</th>
							<td style="text-align: left">
								<%=board.getFileName()%> <br/>
								변경:<input name="attach" type="file" placeholder="Select file">
							</td>
						</tr>
					</thead>
				</table>
				<div class="container">
        			<div class="row">
         				<div class="col-lg-12 text-center">
							<input class="btn-primary" style="font-size: 25px; margin-top: 10px" type="submit" class="btn btn-primary" value="변경">
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>