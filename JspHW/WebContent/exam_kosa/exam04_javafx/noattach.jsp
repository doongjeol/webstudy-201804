<%@ page contentType="application/json; charset=UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String title = request.getParameter("title");
String content = request.getParameter("content");

System.out.println(title);
System.out.println(content);
%>

{
	"result":"success"
}