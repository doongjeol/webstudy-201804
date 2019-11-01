package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestHandleServlet")
public class RequestHandleServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 데이터 받기
		String mid = request.getParameter("mid");
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		//응답생성
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.write("<html>");
		out.write("<head><link rel='stylesheet' type='text/css' href='resources/css/content.css'></head>");
		out.write("<body>");
		out.write("mid" + mid + "<br/>");
		out.write("bno" + bno + "<br/>");
		out.write("</body>");
		out.write("</html>");
	}

}
