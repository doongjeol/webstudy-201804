<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.nio.file.*" %>

<%
//클라이언트가 다운로드할 때의 이름
String originalFileName = "buzzer.png";
String filePath = "C:/Temp/upload/buzzer1.png";
//클라이언트가 파일의 종류를 알아내어 어떻게 처리할 지 결정하기 위해
String fileContentType = application.getMimeType(filePath);
//클라이언트가 다운로드할 때 파일의 사이즈를 알수 있도록 하기 위해
File file = new File(filePath);
long fileSize = file.length();

//응답 헤더 구성
response.reset();
response.setContentType(fileContentType);
response.setContentLength((int)fileSize);
response.setHeader("Content-Transfer-Encoding", "binary");
originalFileName = new String(originalFileName.getBytes("UTF-8"), "ISO-8859-1");
response.setHeader("Content-Disposition", "attachment; filename=\"" + originalFileName + "\";");

//응답 바디에 파일의 데이터를 넣기
out.clear();
out = pageContext.pushBody();
ServletOutputStream sos = response.getOutputStream();
FileInputStream fis = new FileInputStream(file);
byte[] data = new byte[1024];
while(true) {
	int byteNum = fis.read(data);
	if(byteNum == -1) break;
	sos.write(data, 0, byteNum);
}
sos.flush();
sos.close();
fis.close();
%>




