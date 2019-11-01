<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*, service.*"%>

<%
int bno = Integer.parseInt(request.getParameter("bno"));
BoardService boardService = BoardService.getInstance();
Board board = boardService.findByBno(bno);

board.setHitcount(board.getHitcount()+1);
boardService.modify(board);
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
			<h4 style="magin:30px; text-align: center; ">게시물 내용</h4>
		</div>
		<div class="container">
        	<div class="row">
         		<div class="col-lg-12 text-center">
					<table class="table table-hover">
						<thead class="thead-dark">
						<tr>
							<th style="width:50px">번호</th>
							<td style="width:500px; text-align: left"><%=board.getBno()%></td>
						</tr>
						<tr>
							<th style="width:50px">제목</th>
							<td style="width:500px; text-align: left"><%=board.getTitle()%></td>
						</tr>
						<tr>
							<th style="width:50px">내용</th>
							<td style="width:500px; text-align: left"><%=board.getContent()%></td>
						</tr>
						<tr>
							<th style="width:50px">글쓴이</th>
							<td style="width:500px; text-align: left"><%=board.getWriter()%></td>
						</tr>
						<tr>
							<th style="width:50px">날짜</th>
							<td style="width:500px; text-align: left"><%=board.getBdate()%></td>
						</tr>
						<tr>
							<th style="width:50px">조회수</th>
							<td style="width:500px; text-align: left"><%=board.getHitcount()%></td>
						</tr>
						<tr>
							<th style="width:50px">첨부</th>
							<td style="width:500px; text-align: left">
								<h5>다운받기 : <a class="text-danger" href="download.jsp?bno=<%=board.getBno()%>"><%=board.getFileName()%></a></h5>
							</td>
						</tr>
						</thead>
					</table>
					<div style="margin-top: 10px">
						<a class="btn-primary" style="font-size: 25px;" href="updateForm.jsp?bno=<%=board.getBno()%>">수정</a>
						<a class="btn-primary" style="font-size: 25px;"href="delete.jsp?bno=<%=board.getBno()%>">삭제</a>
						<a class="btn-primary" style="font-size: 25px;"href="list.jsp?bno=<%=board.getBno()%>">목록</a>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>










