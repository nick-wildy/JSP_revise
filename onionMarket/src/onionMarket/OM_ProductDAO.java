	package onionMarket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class OM_ProductDAO {

private static OM_ProductDAO instance =  new OM_ProductDAO();
	
	public static OM_ProductDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e2) {}
	}
	
	private OM_ProductDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			String version = getVersion();
			System.out.println(version + "접속됨");
		} catch (Exception e) {
			
		}finally {
			close();
		}
		
	}
	public String getVersion() {
		String version="";
		String sql = "select banner from v$version";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				version = rs.getString("banner");
			}
		} catch (Exception e) {
			
		}finally {
			close();
		}
		return version;
	}
	
	public ArrayList<OM_ProductDTO> getList(){
		ArrayList<OM_ProductDTO> list = new ArrayList<OM_ProductDTO>();
		String sql ="select * from omproduct";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OM_ProductDTO dto = new OM_ProductDTO();
				dto.setProductIdx(rs.getInt("productidx"));
				dto.setProductName(rs.getString("productname"));
				dto.setProductPrice(rs.getInt("productprice"));
				dto.setProductDate(rs.getDate("productDate"));
				dto.setLoginUserId(rs.getString("loginUserId"));
				dto.setLoginUserAddress(rs.getString("loginUserAddress"));
				dto.setLoginUserNick(rs.getString("loginUserNick"));
				dto.setLoginUserImg(rs.getString("loginUserImg"));
				dto.setProductText(rs.getString("productText"));
				dto.setProductImg(rs.getString("productimg"));
				list.add(dto);
			}					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}					
		return list;
	}
	
	public OM_ProductDTO selectOne(int idx) {
		OM_ProductDTO dto = null;
		String sql ="select * from omproduct where productidx=" + idx;
		
		try {
			conn =ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = new OM_ProductDTO();
				dto.setProductIdx(rs.getInt("productIdx"));
				dto.setProductName(rs.getString("productname"));
				dto.setProductPrice(rs.getInt("productprice"));
				dto.setProductDate(rs.getDate("productDate"));
				dto.setLoginUserId(rs.getString("loginUserId"));
				dto.setLoginUserAddress(rs.getString("loginUserAddress"));
				dto.setLoginUserNick(rs.getString("loginUserNick"));
				dto.setProductText(rs.getString("productText"));
				dto.setLoginUserImg(rs.getString("loginUserImg"));
				dto.setProductImg(rs.getString("productImg"));
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}
	
	public int add(OM_ProductDTO product) {
		int row = 0;
		String sql = "insert into omproduct (productname, productprice, loginuserid, loginuseraddress, loginUserNick, producttext, productImg, loginUserImg) values (?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getProductName());
			pstmt.setInt(2, product.getProductPrice());
			pstmt.setString(3, product.getLoginUserId());
			pstmt.setString(4, product.getLoginUserAddress());
			pstmt.setString(5, product.getLoginUserNick());
			pstmt.setString(6, product.getProductText());
			pstmt.setString(7, product.getProductImg());
			pstmt.setString(8, product.getLoginUserImg());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete from omproduct where productidx = " + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return row;
	}
	
	public int update(OM_ProductDTO product) {
		int row = 0;
		String sql = "update omproduct set productname=?, productprice=?, loginuserid=?, loginuseraddress=?, loginUserNick=?, producttext=?, productImg=?, loginUserImg=? where productidx=" + product.getProductIdx();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getProductName());
			pstmt.setInt(2, product.getProductPrice());
			pstmt.setString(3, product.getLoginUserId());
			pstmt.setString(4, product.getLoginUserAddress());
			pstmt.setString(5, product.getLoginUserNick());
			pstmt.setString(6, product.getProductText());
			pstmt.setString(7, product.getProductImg());
			pstmt.setString(8, product.getLoginUserImg());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;

	}
}
