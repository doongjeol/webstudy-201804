package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Board;
import service.BoardService;

@WebServlet("/JSTLServlet")
public class JSTLServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//EL 테스트 --------------------------------
		request.setAttribute("key1", "value1");
		
		HttpSession session = request.getSession();
		session.setAttribute("key2","value2");
		
		ServletContext application = request.getServletContext();
		application.setAttribute("key3","value3");
		
		//EL 테스트 ---------------------------------
		Board board = new Board();
		board.setTitle("날씨가 좋네요");
		board.setContent("학습을 열심히 해야겠어요");
		request.setAttribute("key4", board);
		
		//<c:if> 테스트 -----------------------------
		String mid = "admin";
		session.setAttribute("key5", mid);
		//<c:forEach 테스트 ------------------------
		List<String> items = new ArrayList<String>();
		items.add("웹 개발자");
		items.add("드론 개발자");
		items.add("스마트 팩토리 개발자");
		items.add("스마트 홈 개발자");
		request.setAttribute("key6", items);
		
		List<Board> boards = BoardService.getInstance().findByPage(1, 10);
		request.setAttribute("key7",boards);
		
		//응답 생성
		RequestDispatcher rd = request.getRequestDispatcher("/exam15_jstl/view.jsp");
		rd.forward(request, response);
	}
}
