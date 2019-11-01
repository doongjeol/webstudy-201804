<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dao.*, dto.*, service.*, java.util.*" %>

<%
BoardService boardService = BoardService.getInstance();

//페이지당 행수
int rowsPerPage = 10;
//그룹당 페이지수
int pagesPerGroup = 5;
//전체 게시물 수
int totalBoardCount = boardService.getTotalBoardCount();
//전체 페이지 수
int totalPageNo = totalBoardCount / rowsPerPage;
if((totalBoardCount%rowsPerPage) != 0) totalPageNo++;//전체 게시물 수가 딱 나눠떨어지지 않을 때의 게시물 페이지
//전체 그룹수
int totalGroupNo = totalPageNo / pagesPerGroup;
if((totalPageNo%pagesPerGroup) != 0) totalGroupNo++;//전체 페이지 수가 딱 나눠떨어지지 않을 때의 게시물 그룹
//현재 페이지 번호 얻기
int pageNo=1;
String strPageNo = request.getParameter("pageNo");
if(strPageNo != null) {
	pageNo = Integer.parseInt(strPageNo);
} else if(session.getAttribute("pageNo") != null){ // list.jsp로 들어오는 경우의 수 중, 제일 처음 게시판 진입하거나 detail.jsp에서 목록 버튼을 누르거나
	pageNo = (Integer) session.getAttribute("pageNo");
}
session.setAttribute("pageNo", pageNo);

//현재 페이지의 그룹 번호
int groupNo = (pageNo-1)/pagesPerGroup + 1;
//현재 그룹의 시작 페이지 번호
int startPageNo = (groupNo-1)*pagesPerGroup + 1;
//현재 그룹의 끝 페이지 번호
int endPageNo = startPageNo + (pagesPerGroup-1);
if(groupNo == totalGroupNo) endPageNo = totalPageNo;

List<Board> list = boardService.findByPage(pageNo, rowsPerPage);
%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="../../resources/css/clean-blog.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	</head>
	<body>
	<h4 style="magin:30px; text-align: center; ">게시물을 수정, 삭제하려면 제목을 누르세요</h4>
		<a class="btn-primary" style="font-size: 25px;" href="writeForm.jsp" class="button" style="margin-bottom: 10px">글쓰기</a>
		<table class="table table-hover">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">번호</th>
		      <th scope="col">제목</th>
		      <th scope="col">글쓴이</th>
		      <th scope="col">날짜</th>
		      <th scope="col">조회수</th>
		    </tr>
		  </thead>
		  <tbody>
		      <%for(Board board : list) {%>
		      	<tr>
					<td><%=board.getBno()%></td>
					<td><a href="detail.jsp?bno=<%=board.getBno()%>"><%=board.getTitle()%></a></td>
					<td><%=board.getWriter()%></td>
					<td><%=board.getBdate()%></td>
					<td><%=board.getHitcount()%></td>
			    </tr>
				<%}%>
		  </tbody>
		</table>
		<div class="container">
        	<div class="row">
         		<div id="board" class="col-lg-12 text-center">
					<a  class="px-2" href="list.jsp?pageNo=1">[처음]</a>
					<%if(groupNo > 1) {%>
						<a class="px-2" href="list.jsp?pageNo=<%=startPageNo-1%>">[이전]</a>
					<%}%>
					<%for(int i=startPageNo; i<=endPageNo; i++) {%>
						<a class="px-2 pageNo <%=((pageNo==i)?"selected":"")%>" href="list.jsp?pageNo=<%=i%>"><%=i%></a>
					<%}%>
					<%if(groupNo < totalGroupNo) {%>
						<a class="px-2" href="list.jsp?pageNo=<%=endPageNo+1%>">[다음]</a>
					<%}%>
					<a class="px-2" href="list.jsp?pageNo=<%=totalPageNo%>">[맨끝]</a>
				</div>
			</div>
		</div>
	</body>
</html>