<%@ page contentType="text/html; charset=UTF-8"%>

<%-- WEB-INF/lib/cos.jar 가 추가되어야 됨 --%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%-- 파일 파트 --%>
<%
//multipart/form-data를 파싱하는 MultipartRequest 객체 생성
MultipartRequest mr = new MultipartRequest(
	request,
	"C:/Temp/upload",
	10*1024*1024,
	"UTF-8",
	new DefaultFileRenamePolicy()
);
//클라이언트가 올린 파일명
String originalFileName = mr.getOriginalFileName("attach");
//실제 저장된 파일명
String savedFileName = mr.getFilesystemName("attach");
//파일의 형식
String fileContentType = mr.getContentType("attach");
%>

<%-- 문자 파트 --%>
<%
String title = mr.getParameter("title");
String content = mr.getParameter("content");
%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../../resources/css/content.css">	
	</head>
	<body>
		<div id="header">
			<h3>파일 업로드 처리</h3>
		</div>	
		
		<div id="content">
			title: <%=title%> <br/>
			content: <%=content%> <br/>
			originalFileName: <%=originalFileName%> <br/>
			savedFileName: <%=savedFileName%> <br/>
			fileContentType: <%=fileContentType%> <br/>
		</div>
	</body>
</html>





