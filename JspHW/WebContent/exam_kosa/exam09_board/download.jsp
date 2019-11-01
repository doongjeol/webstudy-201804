<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.nio.file.*, service.*, dto.*"%>

<%
int bno = Integer.parseInt(request.getParameter("bno"));
BoardService boardService = BoardService.getInstance();
Board board = boardService.findByBno(bno);

//Client가 할 때의 이름 
String originalFileName = board.getFileName();

String filePath = "C:/temp/upload/" + board.getSavedFileName();

//Client가 파일의 종류를 알아내어 어떻게 처리할 지 결정하기 위해
/* String fileContentType = Files.probeContentType(file.toPath()); */
String fileContentType = application.getMimeType(filePath);

File file = new File(filePath);
//Client가 다운로드할 때 파일의 사이즈를 알수 있도록 하기 위해
long fileSize = file.length();

//응답 헤더 구성
response.reset();
response.setContentType(fileContentType);
response.setContentLength((int)fileSize);
response.setHeader("Content-Transfer-Encoding", "binary");

//Content의 저장위치를 알려주는데 첨부를 filename을 주고 저장 -> 브라우저는 display 하지 않고 무조건 다운로드 창을 띠운다. 단, 브라우저만 해당 사항
// \" => "를 반드시 추가하라는 의미 
originalFileName = new String(originalFileName.getBytes("UTF-8"), "ISO-8859-1");
response.setHeader("Content-Disposition", "attachment; filename=\"" + originalFileName + "\";");

//응답 바디에 파일의 데이터 넣기
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