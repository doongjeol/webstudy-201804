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

int bno = Integer.parseInt(mr.getParameter("bno"));
BoardService boardService = BoardService.getInstance();
Board board = boardService.findByBno(bno);

board.setTitle(mr.getParameter("title"));
board.setContent(mr.getParameter("content"));
if(mr.getOriginalFileName("attach") != null) {
	board.setFileName(mr.getOriginalFileName("attach"));
	board.setSavedFileName(mr.getFilesystemName("attach"));
}

boardService.modify(board);
response.sendRedirect("list.jsp");
%>