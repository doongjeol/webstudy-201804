package servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet3 extends HttpServlet {
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("DispatcherServlet3 객체 초기화");
		String param1 = config.getInitParameter("param1");//값 받기
		String param2 = config.getInitParameter("param2");//xml에서 주었던 값
		String contextConfigLocation = config.getInitParameter("contextConfigLocation");
		System.out.println(param1);
		System.out.println(param2);
		System.out.println(contextConfigLocation);
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
