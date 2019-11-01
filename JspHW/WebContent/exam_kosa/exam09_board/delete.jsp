<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="service.*" %>

<%
int bno = Integer.parseInt(request.getParameter("bno"));
BoardService boardService = BoardService.getInstance();
boardService.remove(bno);

response.sendRedirect("list.jsp");
%>