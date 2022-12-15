package ex03;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

// 커넥션 풀 (dataSource)
// context.xml
// web.xml
// 싱글톤

public class Ex03DAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	public Ex03DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			String version = getVersion();
			System.out.println(version + "접속됨");
		} catch (NamingException e) {
			System.out.println("생성자 예외 : " + e);
		} 
	}
	
	private String getVersion() {
		String version = "";
		String sql = "select banner from v$version";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				version = rs.getString("banner");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return version;
	}

	// DB에 저장된 데이터를 불러와서 리스트로 반환하는 함수
}
