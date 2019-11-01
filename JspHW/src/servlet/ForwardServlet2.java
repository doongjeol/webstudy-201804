package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import service.BoardService;

@WebServlet("/ForwardServlet2")
public class ForwardServlet2 extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 데이터 받기
		int bno = Integer.parseInt(request.getParameter("bno"));
		BoardService boardService = BoardService.getInstance();
		Board board = boardService.findByBno(bno);
		
		
		//응답생성
		request.setAttribute("board", board);
		RequestDispatcher rd = request.getRequestDispatcher("/exam14_servlet/forwarded2.jsp");//응답을 만들어주는 jsp로 만들어준다
		rd.forward(request, response);
	}

}
