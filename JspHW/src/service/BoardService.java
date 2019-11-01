package service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dao.BoardDao;
import dto.Board;

public class BoardService {
	private static BoardService instance;
	public static BoardService getInstance() {
		if(instance == null) {
			instance = new BoardService();
		}
		return instance;
	}
	
	private DataSource ds;
	private BoardService() {
		try {
			Context initContext = new InitialContext();//application 객체
			Context envContext  = (Context)initContext.lookup("java:/comp/env");//tomcat이 요하는 문장
			ds = (DataSource)envContext.lookup("jdbc/myoracle");//context.xml에 등록돼있는 이름
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public Integer write(Board board) {
		Integer bno=0;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();			
			bno = boardDao.insert(board, conn);
			
			if(bno != null) {
				System.out.println(bno + "번 게시물이 저장되었습니다");
			} else {
				System.out.println("게시물이 저장되지 않았습니다");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}	
		
		return bno;
	}
	
	public void remove(String titleKeyword) {
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			int row = boardDao.delete(titleKeyword, conn);
			System.out.println(row+"행이 삭제 되었습니다");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
	}
	
	public void remove(int bno) {
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			int row = boardDao.delete(bno, conn);
			System.out.println(row+"행이 삭제 되었습니다");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
	}
	
	public void modify(Board board) {
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			int row = boardDao.update(board, conn);
			System.out.println(row+"행이 수정 되었습니다");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
	}
	
	public Board findByBno(int bno) {
		Board board = null;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			board = boardDao.selectByBno(bno, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
		
		return board;
	}
	
	public List<Board> findByTitle(String title){
		List<Board> list = new ArrayList<Board>();
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			list = boardDao.selectByTitle(title, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
		
		return list;		
	}
	
	public List<Board> findByPage(int pageNo, int rowsPerPage){
		List<Board> list = new ArrayList<Board>();
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			list = boardDao.selectByPage(pageNo,rowsPerPage,conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
		
		return list;		
	}
	
	public int getTotalBoardCount() {
		int count = 0;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			BoardDao boardDao = BoardDao.getInstance();
			count = boardDao.countAll(conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{conn.close();} catch(Exception e) {}
		}
		
		return count;	
		
	}
}
