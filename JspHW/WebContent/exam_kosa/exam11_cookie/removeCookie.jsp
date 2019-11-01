<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.*"%>

<%
//제거하고자 하는 쿠키의 동일한 이름으로 새로운 쿠키를 생성
Cookie cookie1 = new Cookie("key1","");
Cookie cookie2 = new Cookie("key2","");

//쿠키의 저장 기간을 0으로 셋팅하면 쿠키를 삭제하라는 지시
cookie1.setMaxAge(30*60);
cookie2.setMaxAge(30*60);

//쿠키 제거를 하라는 응답 헤더
response.addCookie(cookie1);
response.addCookie(cookie2);

response.sendRedirect("content.jsp");
%>