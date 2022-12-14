package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductDAO {

	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public ProductDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ProductDTO> selectList() {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "select * from product";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductDTO ob = new ProductDTO();
				ob.setIdx(rs.getInt(1));
				ob.setName(rs.getString(2));
				ob.setPrice(rs.getInt(3));
				ob.setImgPath(rs.getString(4));
				list.add(ob);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(stmt != null) 	stmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return list;
	}
	
	public ArrayList<ProductDTO> selectListByName(String keyword) {
		
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "select * from product where name like '%" + keyword + "%'";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductDTO ob = new ProductDTO();
				ob.setIdx(rs.getInt(1));
				ob.setName(rs.getString(2));
				ob.setPrice(rs.getInt(3));
				ob.setImgPath(rs.getString(4));
				list.add(ob);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(stmt != null) 	stmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return list;
	}
	
	public ProductDTO selectOne(int idx) {
		ProductDTO ob = null;
//		String sql = "select * from product where name like '%" + keyword + "%'";
		String sql = "select * from product where idx = " + idx;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ob = new ProductDTO();
				ob.setIdx(rs.getInt(1));
				ob.setName(rs.getString(2));
				ob.setPrice(rs.getInt(3));
				ob.setImgPath(rs.getString(4));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(stmt != null) 	stmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return ob;
	}
	
}



