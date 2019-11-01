<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.net.*"%>


<%
//쿠키 생성
Cookie cookie1 = new Cookie("key1", "data1");
Cookie cookie2 = new Cookie("key2",URLEncoder.encode("데이터1","UTF-8"));

//쿠키의 저장기간(30분)
cookie1.setMaxAge(30*60);
cookie2.setMaxAge(30*60);

//응답 헤더에 쿠키 정보 저장
response.addCookie(cookie1);
response.addCookie(cookie2);

response.sendRedirect("content.jsp");
%>
