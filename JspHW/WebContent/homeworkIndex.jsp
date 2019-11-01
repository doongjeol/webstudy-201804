<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
   <head >
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>KimDain</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <link href="resources/css/clean-blog.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   </head>
   <body>
   	<!-- 상단바 -->
   	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
   		<div class="container">
   			<a class="navbar-brand" href="homeworkIndex.jsp" style="color:#FFD536; font-family:Kaushan Script; font-size: 20px;">Jsp Study</a>
   			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
   				<span class="navbar-toggler-icon"></span>
   			</button>
   			<div class="collapse navbar-collapse" id="navbarResponsive">
   				<ul class="navbar-nav ml-auto">
   					<li class="nav-item">
            			<a class="nav-link" href="resources/page/spstudy.jsp">spstudy</a>
            		</li>
   					<li class="nav-item">
            			<a class="nav-link" href="resources/page/study.jsp">study</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" href="resources/page/project.jsp">project</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" href="resources/page/video.jsp">video</a>
            		</li>
            		<li class="nav-item">
            			<a class="nav-link" href="resources/page/copyrighter.jsp">copyrighter</a>
            		</li>
            	</ul>
            </div>
         </div>
     </nav>    
     
     <!-- header -->
     <header class="masthead" style="background-image: url('resources/images/home.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading" >
              <h1 >JSP 공부하기</h1>
              <span class="subheading">Servlet Jsp Java Programming</span>
            </div>
          </div>
        </div>
      </div>
    </header>
    
    <!-- home 내용 -->
	 <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 style="margin:50px;"class="section-heading text-uppercase">IoT 플랫폼 개발을 위한 JSP활용 및 DB 구현</h2>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <img id="summary" style="size: 70% 70%;" src="resources/images/web.png">
            <h4 class="service-heading">JSP 활용한 Web 구현</h4>
            <p class="text-muted">HTML<br/>HTTP 요청/응답<br/>JAVA FX<br/>JQuery</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
            </span>
			<img id="summary" src="resources/images/css.png">          
            <h4 class="service-heading">Web 디자인</h4>
            <p class="text-muted">CSS<br/>BootStrap</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
            </span>
             <img id="summary"  src="resources/images/database.png">
            <h4 class="service-heading">DB</h4>
            <p class="text-muted">DB 게시판<br/>SQL</p>
          </div>
        </div>
      </div>
    </section>
   </body>
</html>