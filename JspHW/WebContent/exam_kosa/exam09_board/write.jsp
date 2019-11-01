<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="service.*" %>
<%@ page import="dto.*" %>

<%
MultipartRequest mr = new MultipartRequest(
	request,
	"C:/temp/upload",
	10*1024*1024,
	"UTF-8",
	new DefaultFileRenamePolicy()
);

Board board = new Board();
board.setTitle(mr.getParameter("title"));
board.setContent(mr.getParameter("content"));
board.setWriter(mr.getParameter("writer"));
board.setFileName(mr.getOriginalFileName("attach"));
board.setSavedFileName(mr.getFilesystemName("attach"));

BoardService boardService = BoardService.getInstance();
Integer bno = boardService.write(board);
if(bno != null) {
	response.sendRedirect("list.jsp");
} else {
	session.setAttribute("board", board);
	response.sendRedirect("writeForm.jsp");
}
%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../../resources/css/content.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		
	</body>
</html>