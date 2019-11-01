package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.Board;

public class BoardDao{
	private static BoardDao instance;
	public static BoardDao getInstance() {
		if(instance == null) {
			instance = new BoardDao();
		}
		return instance;
	}
	
	public Integer insert(Board board, Connection conn) throws Exception {
		Integer pk = null;
		
		String sql = ""+
			"insert into board "+//board라는 테이블에 저장
			"(bno, title, content, writer, bdate, hitcount, filename, savedfilename) "+
			"values "+
			"(bno_seq.nextval, ?,?,?, sysdate, 0, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql, new String[] {"bno"});//완성된 pstmt, conn을 준비, sql에서 사용한 bno 가져와
		pstmt.setString(1,board.getTitle());//물음표순번
		pstmt.setString(2,board.getContent());
		pstmt.setString(3,board.getWriter());
		pstmt.setString(4,board.getFileName());
		pstmt.setString(5,board.getSavedFileName());
		int row = pstmt.executeUpdate();//데이터조작 sql문 : insert, delete, update 등 사용시 executeUpdate사용
		ResultSet rs = pstmt.getGeneratedKeys();
		if(rs.next()) {//커서를 beforefirst에서 first로 이동
			pk = rs.getInt(1);
		}
		rs.close();
		pstmt.close();
		
		return pk;		
	}
	
	public int delete(int bno, Connection conn) throws Exception {
		
		String sql = "delete from board where bno=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,bno);
		int row = pstmt.executeUpdate();
		pstmt.close();
		return row;
		
	}
	
	public int delete(String keyword, Connection conn) throws Exception {		
		String sql = "delete from board where title like ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,"%"+keyword+"%");
		int row = pstmt.executeUpdate();
		pstmt.close();
		return row;
	}
	
	public int update(Board board, Connection conn) throws Exception {
		String sql = "update board set title=?, content=?, hitcount=?, filename=?, savedfilename=? where bno=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,board.getTitle());
		pstmt.setString(2,board.getContent());
		pstmt.setInt(3,board.getHitcount());
		pstmt.setString(4,board.getFileName());
		pstmt.setString(5,board.getSavedFileName());
		pstmt.setInt(6,board.getBno());
		
		int row = pstmt.executeUpdate();
		pstmt.close();
		System.out.println("새로운 행이"+row+"개가 수정되었습니다");
		
		return row;
		
	}
	
	public List<Board> selectAll() {
		List<Board> list = new ArrayList<Board>();
		Connection conn = null;//대여
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl",
					"hr",
					"iot12345"
				  );
		String sql = "select bno, title, writer, bdate, hitcount from board";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			Board board = new Board();
			board.setBno(rs.getInt("bno"));//rs.getInt(1);
			board.setTitle(rs.getString(2));//rs.getString("title");
			board.setWriter(rs.getString("writer"));
			board.setBdate(rs.getDate("bdate"));
			board.setHitcount(rs.getInt("hitcount"));	
			list.add(board);
		}
		
		int row = pstmt.executeUpdate();
		pstmt.close();
		System.out.println("행"+row+"개를 가져왔습니다");
		
		} catch(Exception e) {}
		finally {
			try{conn.close();} catch(Exception e) {}
		}
		
		return list;
	}
	
	public List<Board> selectByTitle(String title, Connection conn) throws Exception {
		List<Board> list = new ArrayList<Board>();
		
		String sql = "select bno, title, writer, content, bdate, hitcount from board where title like ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,"%" +title+"%");
		ResultSet rs = pstmt.executeQuery();		
		while(rs.next()){
			Board board = new Board();
			board.setBno(rs.getInt("bno"));//rs.getInt(1);
			board.setTitle(rs.getString(2));//rs.getString("title");
			board.setWriter(rs.getString("writer"));
			board.setBdate(rs.getDate("bdate"));
			board.setHitcount(rs.getInt("hitcount"));	
			list.add(board);
		}
		rs.close();
		pstmt.close();
		
		return list;
	}

	public Board selectByBno(int bno, Connection conn) throws Exception {
		Board board = null;
		
		String sql = "select bno, title, writer, content, bdate, hitcount, filename, savedfilename from board where bno = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,bno);
		ResultSet rs = pstmt.executeQuery();		
		if(rs.next()){
			board = new Board();
			board.setBno(rs.getInt("bno"));//rs.getInt(1);
			board.setTitle(rs.getString(2));//rs.getString("title");
			board.setContent(rs.getString("content"));
			board.setWriter(rs.getString("writer"));
			board.setBdate(rs.getDate("bdate"));
			board.setHitcount(rs.getInt("hitcount"));
			board.setFileName(rs.getString("filename"));
			board.setSavedFileName(rs.getString("savedfilename"));
		}
		int row = pstmt.executeUpdate();
		pstmt.close();
		System.out.println("행"+row+"개를 가져왔습니다");
		
		return board;		
	}
	
	public List<Board> selectByPage(int pageNo, int rowsPerPage, Connection conn) throws Exception{
		List<Board> list = new ArrayList<Board>();
		
		String sql = "";
		sql += "select rnum, bno, title, writer, bdate, hitcount "; 
		sql += "from( ";
		sql += "select rownum as rnum, bno, title, writer, bdate, hitcount "; 
		sql += "from ( ";
		sql += "select bno, title, writer, bdate, hitcount ";
		sql += "from board ";
		sql += "order by bno desc ";
		sql += ") ";
		sql += "where rownum<=? ";
		sql += ") ";
		sql += "where rnum>=? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,(pageNo*rowsPerPage));
		pstmt.setInt(2,(pageNo-1)*rowsPerPage+1);

		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			Board board = new Board();
			board.setBno(rs.getInt("bno"));
			board.setTitle(rs.getString(3));
			board.setWriter(rs.getString("writer"));
			board.setBdate(rs.getDate("bdate"));
			board.setHitcount(rs.getInt("hitcount"));	
			list.add(board);
		}
		
		int row = pstmt.executeUpdate();
		pstmt.close();
		System.out.println("행"+row+"개를 가져왔습니다");
		
		return list;	
	}
	
	public int countAll(Connection conn) throws Exception{
		int count = 0;
		String sql = "select count(*) from board";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		rs.next();
		count = rs.getInt(1);
		rs.close();
		pstmt.close();
		
		return count;
		
		
	}
}