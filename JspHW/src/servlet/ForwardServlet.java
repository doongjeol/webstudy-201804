package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ForwardServlet")
public class ForwardServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 데이터 받기
		String mid = request.getParameter("mid");
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		//응답생성
		request.setAttribute("mid", mid);
		request.setAttribute("bno", bno);
		RequestDispatcher rd = request.getRequestDispatcher("/exam14_servlet/forwarded1.jsp");
		rd.forward(request, response);
	}

}
