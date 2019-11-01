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

@WebServlet("/ForwardServlet3")
public class ForwardServlet3 extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 데이터 받기
		Board board = new Board();
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		board.setWriter(request.getParameter("writer"));
		
		BoardService boardService = BoardService.getInstance();
		boardService.write(board);
		
		
		//응답생성
		response.sendRedirect("exam09_board/list.jsp");
		
	}

}
