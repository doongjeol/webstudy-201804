<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
   <head >
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>project</title>
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
            		<li class="nav-item">
            			<a class="nav-link" href="study.jsp"">study</a>
            		</li>
            		<li class="nav-item active">
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
   <header class="masthead" style="background-image: url('../images/project.jpeg'); height:400px;">
      <div class="overlay"></div>
          <div class="col-lg-12">
            <div class="site-heading">
              <h1 >프로젝트</h1>       
            </div>
          </div>        
    </header>
    
    <!-- About -->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">IoT 3팀</h2>
            <h3 style="margin-bottom: 70px;"class="section-subheading text-muted">2018 상반기 프로젝트 소개</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <ul class="timeline">
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="../images/hud.jpg" >
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2월</h4>
                    <h4 class="subheading">HUD Project</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Eclipse개발 환경에서<br/>JavaFx Canvas를 활용하여 Uav HUD 그리기</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="../images/hudhardware.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>3월 초</h4>
                    <h4 class="subheading">HUD + Hardware</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">NetBeans개발 환경에서<br/>라즈베리파이 보드를 활용한<br/>hardware구현 및 HUD에 접목</p>
                  </div>
                </div>
              </li>
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="../images/gcs.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>3월 말</h4>
                    <h4 class="subheading">ConnectedCar GCS</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">센서 데이터를 UI로 제시 및 구성<br/>MQTT 프로토콜로 네트워크를 구축<br/>MJpg streamer 영상 스트리밍</br>GCS에서 Connected Car제어</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="../images/jsp.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>4월</h4>
                    <h4 class="subheading">Web</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Web Project</p>
                  </div>
                </div>
	              </li>
	              <li>
	                <div class="timeline-image">
	                  <img class="rounded-circle img-fluid" src="../images/drone.jpg" alt="">
	                </div>
	                <div class="timeline-panel">
	                  <div class="timeline-heading">
	                    <h4>5월</h4>
	                    <h4 class="subheading">Drone</h4>
	                  </div>
	                  <div class="timeline-body">
	                    <p class="text-muted">Drone Project</p>
	                  </div>
	                </div>
	              </li>                  
                </div>
          </div>
        </div>
    </section>
   
   </body>
</html>