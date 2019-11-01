<%@ page contentType="application/json; charset=UTF-8"%>

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
String originalFileName1 = mr.getOriginalFileName("attach1");
if(originalFileName1 != null) {
	//실제 저장된 파일명
	String savedFileName1 = mr.getFilesystemName("attach1");
	//파일의 형식
	String fileContentType1 = mr.getContentType("attach1");
	
	System.out.println("originalFileName1: " + originalFileName1);
	System.out.println("savedFileName1: " + savedFileName1);
	System.out.println("fileContentType1: " + fileContentType1);
}

//클라이언트가 올린 파일명
String originalFileName2 = mr.getOriginalFileName("attach2");
if(originalFileName2 != null) {
	//실제 저장된 파일명
	String savedFileName2 = mr.getFilesystemName("attach2");
	//파일의 형식
	String fileContentType2 = mr.getContentType("attach2");
	
	System.out.println("originalFileName2: " + originalFileName2);
	System.out.println("savedFileName2: " + savedFileName2);
	System.out.println("fileContentType1: " + fileContentType2);
}
%>

<%-- 문자 파트 --%>
<%
String title = mr.getParameter("title");
String content = mr.getParameter("content");
%>

{
	"result":"success"
}




