<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="../../resources/css/clean-blog.min.css" rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	</head>
	<body>
			<h3>Servlet</h3>
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				요청 방법
			</div>
			<div class="sector_content">
				<a class="btn-primary"  href="../HomeServlet">Get 방식 요청->HomeServlet</a>
				<form method="post" action="../HomeServlet" style="display : inline-block">
					<input type="submit" class="button" value="Post 방식 요청->HomeServlet">
				</form>
				<br/>
				<a class="btn-primary"  href="../GetServlet">Get 방식 요청->GetServlet</a>
				<form method="post" action="../GetServlet" style="display : inline-block">
					<input type="submit" class="button" value="Post 방식 요청->GetServlet">
				</form>
				<form method="post" action="../PostServlet" style="display : inline-block">
					<input type="submit" class="button" value="Post 방식 요청->PostServlet">
				</form>
			</div>
			<hr>
		</section>
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				외부 서블릿 클래스 URL 매핑
			</div>
			<div >
				<a class="btn-primary" href="../dispatcher">web.xml에 URL 매핑 -> DispatcherServlet</a>
				<a class="btn-primary"href="../dispatcher2">web.xml에 URL 매핑 -> DispatcherServlet</a>
			</div>
			<hr>
		</section>
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				웹 애플리케이션이 배치(deploy)될 때 서블릿 객체 생성
			</div>
			<div>
				<p>
					원래 서블릿은 최초 요청이 들어왔을 때 객체 생성(싱글톤)<br/>
					그렇기 때문에 최초 요청이 응답이 가장 느림<br/>
					두번째 요청부터는 이미 생성된 객체를 사용하므로 응답이 빠름<br/>
				</p>
				<p>
					최초 요청시에도 응답을 빠르게 하려면<br/>
					최소 요청전에 이미 서블릿 객체가 생성되어 있어야 함
					방법: load-on-startup 설정
				</p>
			</div>
			<hr>
		</section>
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				서블릿 초기화
			</div>
			<div >
				<p>
					서블릿은 기본 생성자로 객체가 생성되는 것이 원칙<br/>
					초기화 데이터는 init() 메소드에서 처리하는 것이 원칙<br/>
					초기화 데이터는 web.xml에 기술
				</p>
				<pre>
&lt;init-param&gt;
  &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
  &lt;param-value&gt;/WEB-INF/spring/appServlet/servlet-context.xml&gt;/param-value&gt;
&lt;/init-param&gt;
					</pre>
					<pre>
public void init(ServletConfig config) throws ServletException {
	String contextConfigLocation = config.getInitParameter("contextConfigLocation");
	System.out.println(contextConfigLocation);
}
					</pre>
				</div>
			<hr>
		</section>
		
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				요청처리
			</div>
			<div class="sector_content">
				<a class="btn-primary" href="../RequestHandleServlet?mid=servlet&bno=3" >Get 요청 처리</a>
			</div>
			<hr>
		</section>
			
		<section class="bg-light" id="team">
			<hr>
			<div class="text-success">
				JSP 포워드(Servlet -> JSP)
			</div>
			<div >
				<a  class="btn-primary"  href="../ForwardServlet?mid=servlet&bno=3" >Get 요청 처리</a>
				<a  class="btn-primary"  href="../ForwardServlet2?bno=251">게시물 보기</a>
				<br/><br/><hr/>
							<form method="post" action="../ForwardServlet3">
			<table>
				<tr>
					<th style="width:50px">제목</th>
					<td style="width:500px; text-align: left">
						<input style="width:99%" name="title" type="text" class="form-control" id="title" placeholder="Enter title" value="">
					</td>
				</tr>
				<tr>
					<th style="width:50px">내용</th>
					<td style="width:500px; text-align: left;">
						<textarea style="width:99%; margin: 0px;" rows="5" name="content" class="form-control" id="content" placeholder="Enter content"></textarea>
					</td>
				</tr>
				<tr>
					<th style="width:50px">글쓴이</th>
					<td style="width:500px; text-align: left">
						<input style="width:99%"  name="writer" type="text" class="form-control" id="writer" placeholder="Enter writer" value="">
					</td>
				</tr>
			</table>	
				<input style="margin-top: 10px" class="button" type="submit" class="btn btn-primary" value="쓰기">	
			</form>
					<hr/>
				</div>
		</section>
	</body>
</html>