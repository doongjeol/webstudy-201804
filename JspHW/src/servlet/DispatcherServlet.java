package servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL 요청하고는 무관
public class DispatcherServlet extends HttpServlet {
	//최초 요청시에만 객체 생성 - 싱글톤
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("DispatcherServlet 객체 초기화");
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DispatcherServlet-service");
	}
}
