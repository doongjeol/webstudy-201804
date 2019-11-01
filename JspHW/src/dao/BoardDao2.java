package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.Board;

public class BoardDao2 {
   private static BoardDao2 instance;
   public static BoardDao2 getInstance() {
      if(instance == null) {
         instance = new BoardDao2();
      }
      return instance;
   }
   
   public void insert(Board board) {
      Connection conn = null;
      try {
         Context initContext = new InitialContext(); // context: application 그 자체를 의미
         Context envContext  = (Context)initContext.lookup("java:/comp/env"); // 톰캣에서만 이 내용이 추가로 필요
         DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle"); // 커넥션 풀의 식별이름
         // 커넥션 대여 부분
         conn = ds.getConnection();
         
         /*Class.forName("oracle.jdbc.OracleDriver"); // JDBC 드라이버 클래스를 메모리로 로딩
         Connection conn = DriverManager.getConnection( // 연결 설정
            "jdbc:oracle:thin:@localhost:1521:orcl", // 연결url
            "hr", // 계정
            "iot12345" // 비밀번호
         );*/
   
         String sql = ""+
            "INSERT INTO BOARD " +
            "(bno, title, content, writer, bdate, hitcount, filename, savedfilename) " +
            "VALUES " +
            "(BNO_SEQ.NEXTVAL, ?, ?, ?, sysdate, 0, ?, ?)";
         PreparedStatement pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, board.getTitle()); // 첫번째 물음표에 들어가는 타입은 String이며, title 값을 대입하겠다.
         pstmt.setString(2, board.getContent());
         pstmt.setString(3, board.getWriter());
         pstmt.setString(4, board.getFileName());
         pstmt.setString(5, board.getSavedFileName());
         pstmt.executeUpdate(); // 쿼리문 전송하여 DB갱신(데이터조작을 위한 INSERT, UPDATE, DELETE 실행 시에 사용)
         pstmt.close();
         
      } catch(Exception e) {e.printStackTrace();
      } finally { // finally 절은 에러가 나던 안나던, 리턴문이 존재하더라도 마지막에 실행된다!
         // connection 반납
         try{conn.close();} catch(Exception e) {} // 기존의 연결끊기에서 커넥션 반납으로 의미가 바뀜.
                                       // 어떻게 바뀌냐? -> 인터페이스로 구현되어있으니까!
      }
   }
}