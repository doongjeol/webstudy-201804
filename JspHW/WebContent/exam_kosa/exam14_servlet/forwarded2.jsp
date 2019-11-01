<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*, service.*"%>

<%
Board board = (Board) request.getAttribute("board");
%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="resources/css/content.css">
	</head>
	<body>
		<div id="header">
			<h3>게시물 내용</h3>
		</div>		
		
		<div id="content">
			<table>
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
						<a href="exam09_board/download.jsp?bno=<%=board.getBno()%>"><%=board.getFileName()%></a>
					</td>
				</tr>
			</table>
			
			<div style="margin-top: 10px">
				<a class="button" href="exam09_board/updateForm.jsp?bno=<%=board.getBno()%>">수정</a>
				<a class="button" href="exam09_board/delete.jsp?bno=<%=board.getBno()%>">삭제</a>
				<a class="button" href="exam09_board/list.jsp">목록</a>
			</div>
		</div>
	</body>
</html>




