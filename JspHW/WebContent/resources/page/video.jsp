<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
   <head >
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>video</title>
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
            		<li class="nav-item">
            			<a class="nav-link" href="project.jsp">project</a>
            		</li>
            		<li class="nav-item active">
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
   <header class="masthead" style="background-image: url('../images/music.jpeg'); height:400px;">
      <div class="overlay"></div>
          <div class="col-lg-12">
            <div class="site-heading">
              <h1 >영상</h1>       
            </div>
          </div>        
    </header>
    
    <!-- 동영상 -->
    <div class="container">
        <div class="row">
	        <div class="col-lg-12 text-center">
	            <h2 style="margin:20px;"class="section-heading text-uppercase">쉬어가기</h2>
	            <h3 style="margin:20px;"class="section-subheading text-muted">뮤직비디오</h3>
	        </div>
		    <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
		    	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Q_YdBd05FJs" ></iframe>
		    </div>
		</div>
	</div>
	
	 <!-- Portfolio Grid -->
    <section class="bg-light" id="portfolio">
      <div class="container">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">다른 영상 보기</h2>
            <h3 class="section-subheading text-muted">영상을 보려면 사진 클릭 !</h3>
          </div>
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../images/album1.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>기억의 빈자리</h4>
              <p class="text-muted">나얼</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../images/album2.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>널 부르는 밤</h4>
              <p class="text-muted">나얼</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../images/album3.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>바람기억</h4>
              <p class="text-muted">나얼</p>
            </div>
          </div>
          <div class="col-lg-12 text-center">
            <h2 style="margin:20px;"class="section-heading text-uppercase">공부하기</h2>
            <h3 style="margin:20px;"class="section-subheading text-muted">동영상 강의</h3>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../images/this.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>이것이 자바다</h4>
              <p class="text-muted">신용권 교수님</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img style="margin-bottom:28px; margin-top:27px;"class="img-fluid" src="../images/bootstrap.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Bootstrap Navbar 적용하기</h4>
              <p class="text-muted">solutions channel</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a style="background-color:white"class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img style="margin-bottom:40px; margin-top: 40px; " class="img-fluid" src="../images/coding.gif" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>데이터베이스(MySQL) 이론</h4>
              <p class="text-muted">생활코딩</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
	    <!-- Modal 1 -->
	    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">야야
	      <div class="modal-dialog">
	        <div class="modal-content">
	          <div class="close-modal" data-dismiss="modal">
	            <div class="lr">
	              <div class="rl"></div>
	            </div>
	          </div>
	          <div class="container">
	            <div class="row">
	              <div class="col-lg-8 mx-auto">
	                <div class="modal-body">
	                  <!-- Project Details Go Here -->
	                  <h2 class="text-uppercase">기억의 빈자리</h2>
	                  <p class="item-intro text-muted">나얼</p>
					  <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
			    	  	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/0wlXaHmmOVc" ></iframe>
			    	  </div>
	                  <ul class="list-inline">
	                    
	                  </ul>
	                  <button class="btn btn-primary" data-dismiss="modal" type="button">
	                    <i class="fa fa-times"></i>
	                    Close Project</button>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <!-- Modal 2 -->
	    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog">
	        <div class="modal-content">
	          <div class="close-modal" data-dismiss="modal">
	            <div class="lr">
	              <div class="rl"></div>
	            </div>
	          </div>
	          <div class="container">
	            <div class="row">
	              <div class="col-lg-8 mx-auto">
	                <div class="modal-body">
	                  <!-- Project Details Go Here -->
	                  <h2 class="text-uppercase">널 부르는 밤</h2>
	                  <p class="item-intro text-muted">나얼</p>
					  <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
			    	  	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/CEW-yRtd5r8" ></iframe>
			    	  </div>
	                  <ul class="list-inline">
	                  </ul>
	                  <button class="btn btn-primary" data-dismiss="modal" type="button">
	                    <i class="fa fa-times"></i>
	                    Close Project</button>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <!-- Modal 3 -->
	    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog">
	        <div class="modal-content">
	          <div class="close-modal" data-dismiss="modal">
	            <div class="lr">
	              <div class="rl"></div>
	            </div>
	          </div>
	          <div class="container">
	            <div class="row">
	              <div class="col-lg-8 mx-auto">
	                <div class="modal-body">
	                  <!-- Project Details Go Here -->
	                  <h2 class="text-uppercase">바람기억</h2>
	                  <p class="item-intro text-muted">나얼</p>
					  <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
			    	  	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/f5ShDNOqq1E" ></iframe>
			    	  </div>
	                  <ul class="list-inline">
	                  </ul>
	                  <button class="btn btn-primary" data-dismiss="modal" type="button">
	                    <i class="fa fa-times"></i>
	                    Close Project</button>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	    <!-- Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">이것이 자바다</h2>
                  <p class="item-intro text-muted">신용권 교수님</p>
				  <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
		    	  	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Sos11X7wy1M" ></iframe>
		    	  </div>
				  <p>“가장 중요한 프로그래밍 언어를 하나 배워야 한다면,” 결론은 ‘자바’다. 
				  자바는 현재 웹 애플리케이션 개발에 가장 많이 사용되는 언어이고, 
				  모바일 기기용 소프트웨어 개발에도 널리 사용되고 있다. 
				  오늘날 전 세계인의 사랑을 받는 ‘안드로이드’의 애플리케이션이 바로 자바로 이루어져 있다. 
				  국내 스마트폰의 90%가 안드로이드이니 바야흐로 지금은 ‘자바’ 세상임이 분명하다. 
				  이것이 만약 여러분이 지금 가장 중요한 프로그래밍 언어를 하나 배워야 한다면 ‘자바’가 필연적인 결론으로 나오는 이유다. 
				 </br></br> 
				  이 동영상은 한빛미디어 도서 『이것이 자바다』에서 제공하는 샘플 강좌 입니다.</p>
                  <ul class="list-inline">
                    <a style="background-color:#17a2b8; border-width: 0px"class="btn btn-primary" href="http://book.naver.com/bookdb/book_detail.nhn?bid=8589375">도서 정보 바로가기</a>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Bootstrap Navbar 적용하기</h2>
                  <p class="item-intro text-muted">solutions channel</p>
                  <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
		    	  	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/ycaDmfXjJHI" ></iframe>
		    	  </div>
		    	  <p>이 웹 페이지에 BootStrap을 적용할 때 참고하였던 동영상입니다.</p>
                  <ul class="list-inline">
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">데이터베이스(MySQL) 이론</h2>
                  <p class="item-intro text-muted">생활코딩</p>
                  <div style="width:1350px; height: 750px;"  class="col-lg-12 embed-responsive embed-responsive-1by1" >
		    	  	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Sos11X7wy1M" ></iframe>
		    	  </div>
                  <ul class="list-inline">
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   </body>
</html>