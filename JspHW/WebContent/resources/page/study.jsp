<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
   <head >
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>study</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <link href="../css/clean-blog.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   </head>
   
   <body>
   	<!-- 상단바 -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
   		<div class="container">
   			<a class="navbar-brand" href="../../homeworkIndex.jsp" style="color:#FFD536; font-family:Kaushan Script; font-size: 20px;">Jsp Study</a>
   			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
   				<span class="navbar-toggler-icon"></span>
   			</button>
   			<div class="collapse navbar-collapse" id="navbarResponsive">
   				<ul class="navbar-nav ml-auto">
   					<li class="nav-item">
            			<a class="nav-link" href="spstudy.jsp">spstudy</a>
            		</li>
            		<li class="nav-item active">
            			<a class="nav-link" href="study.jsp"">study</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" href="project.jsp">project</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" href="video.jsp">video</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" href="copyrighter.jsp"">copyrighter</a>
            		</li>
            	</ul>
            </div>
         </div>
     </nav> 
     
     <!-- Page Header -->
    <header class="masthead" style="background-image: url('../images/study.jpg'); height:400px;">
      <div class="overlay"></div>
          <div class="col-lg-3  mx-auto">
            <div class="site-heading">
              <h1 >예제</h1>       
            </div>
          </div>        
    </header>
    
    <!-- 게시 List -->           
       <div class="row" >
          <div class="col-auto">	        
             <h5 class="list-group-item list-group-item-action list-group-item-dark " target="contentCenter" >Ex01 <a class="text-secondary" href="../../exam_kosa/exam01_javacode/useJavaCode.jsp" target="contentCenter">자바코드사용</a></h5>
             <h5 class="list-group-item list-group-item-action " target="contentCenter">Ex02 <a class="text-secondary" href="../../exam_kosa/exam02_request/useRequest.jsp?param1=value1&param2=value2&param2=value3" target="contentCenter">HTTP 내용(GET)</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex02 <a class="text-secondary" href="../../exam_kosa/exam02_request/requestPost.jsp" target="contentCenter">HTTP 내용(POST)</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark" target="contentCenter">Ex03 <a class="text-secondary" href="../../exam_kosa/exam03_fileupload/attachForm.jsp" target="contentCenter">파일 업로드(POST)</a></h5>
             <h5 class="list-group-item list-group-item-action text-danger" target="contentCenter">Ex04 <a class="text-secondary" href="#" >JavaFX HTTP Client</a></h5>
             <h5 class="list-group-item list-group-item-action text-danger" target="contentCenter">Ex04 <a class="text-secondary" href="#" >JavaFX 파일업로드</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark text-danger" target="contentCenter" >Ex05 <a class="text-secondary" href="#">파일 다운로드(POST)</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex06 <a class="text-secondary" href="../../exam_kosa/exam06_css/blockAndInlineTag.jsp" target="contentCenter">블록/인라인 태그</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex06 <a class="text-secondary" href="../../exam_kosa/exam06_css/cssLocation.jsp" target="contentCenter">CSS 작성 위치</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex06 <a class="text-secondary" href="../../exam_kosa/exam06_css/cssSelector.jsp" target="contentCenter">CSS 선택자</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark" target="contentCenter" >Ex07 <a class="text-secondary" href="../../exam_kosa/exam07_bootstrap/button.jsp" target="contentCenter">부트 스트랩</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark" target="contentCenter" >Ex07 <a class="text-secondary" href="../../exam_kosa/exam07_bootstrap/gridsystem.jsp" target="contentCenter">부트 스트랩(Grid)</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex08 <a class="text-secondary" href="../../exam_kosa/exam08_jquery/content.jsp" target="contentCenter">JQuery</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark" target="contentCenter">Ex09 <a class="text-secondary" href="../../exam_kosa/exam09_board/list.jsp?pageNo=1" target="contentCenter">게시판</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex10 <a class="text-secondary" href="../../exam_kosa/exam10_objectscope/content.jsp" target="contentCenter">객체 저장 범위</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark" target="contentCenter">Ex11 <a class="text-secondary" href="../../exam_kosa/exam11_cookie/content.jsp" target="contentCenter">쿠키</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex12 <a class="text-secondary" href="../../exam_kosa/exam12_validcheck/content.jsp" target="contentCenter">유효성 검사</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark"" target="contentCenter">Ex13 <a class="text-secondary" href="../../exam_kosa/exam13_ajax/content.jsp" target="contentCenter">ajax</a></h5>
             <h5 class="list-group-item list-group-item-action" target="contentCenter">Ex14 <a class="text-secondary" href="../../exam_kosa/exam14_servlet/content.jsp" target="contentCenter">Servlet</a></h5>
             <h5 class="list-group-item list-group-item-action list-group-item-dark"" target="contentCenter">Ex15 <a class="text-secondary" href="../../exam_kosa/exam15_jstl/content.jsp" target="contentCenter">JSTL</a></h5>
          </div>
             <iframe name="contentCenter" style="width: 81%; height: 800px; border-width: 0px;">
             </iframe>
    	</div>
   </body>
</html>