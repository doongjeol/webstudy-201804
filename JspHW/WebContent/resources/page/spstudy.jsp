<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>spstudy</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="../css/clean-blog.min.css">
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
   					<li class="nav-item active">
            			<a class="nav-link" href="spstudy.jsp">spstudy</a>
            		</li>
            		<li class="nav-item">
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
             <h6 class="list-group-item list-group-item-action list-group-item-dark " target="contentCenter" >Ex01 <a class="text-secondary" href="../../exam_sp/exam01_htmlbasic/stylesheet.jsp" target="contentCenter">HTML5 기본 구조와 작성법</a></h6>
             <h6 class="list-group-item list-group-item-action " target="contentCenter" >Ex02 <a class="text-secondary" href="../../exam_sp/exam02_htmltag/htmltag.jsp" target="contentCenter">HTML5 기본 태그</a></h6>
             <h6 class="list-group-item list-group-item-action list-group-item-dark " target="contentCenter" >Ex03 <a class="text-secondary" href="../../exam_sp/exam03_htmltag2/htmltag2.jsp?param1=value1&param2=value2&param2=value3" target="contentCenter">HTML5 멀티미디어 & 입력 태그</a></h6>
             <h6 class="list-group-item list-group-item-action " target="contentCenter" >Ex04 <a class="text-secondary" href="../../exam_sp/exam04_css3selector/css3selector.jsp" target="contentCenter">css3 선택자</a></h6>
             <h6 class="list-group-item list-group-item-action list-group-item-dark " target="contentCenter" >Ex05 <a class="text-secondary" href="../../exam_sp/exam05_cssattribute/cssattribute.jsp" target="contentCenter">css3 속성</a></h6>
             <h6 class="list-group-item list-group-item-action " target="contentCenter" >Ex06 <a class="text-secondary" href="../../exam_sp/exam06_css3layout/css3layout.jsp" target="contentCenter">css3 응용과 레이아웃 </a></h6>
             <h6 class="list-group-item list-group-item-action list-group-item-dark " target="contentCenter" >Ex07 <a class="text-secondary" href="../../exam_sp/exam07_responsiveweb/responsiveweb.jsp" target="contentCenter">css3 속성</a></h6>
          </div>
             <iframe name="contentCenter" style="width: 80%; height: 800px; border-width: 0px;">
             </iframe>
    	</div>
   </body>
</html>