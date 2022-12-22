package onionMarket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class OM_UserDAO {

	private static OM_UserDAO instance = new OM_UserDAO();
	
	public static OM_UserDAO getInstance() {
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
	
	private OM_UserDAO() {
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
	
	public int signUp(OM_UserDTO user) {
		int row = 0;
		String sql = "insert into omuser(userid, userpw, nickname, phonenumber, address, gender, username, userimg) values ( ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getUserpw());
			pstmt.setString(3, user.getNickname());
			pstmt.setString(4, user.getPhoneNumber());
			pstmt.setString(5, user.getAddress());
			pstmt.setString(6, user.getGender());
			pstmt.setString(7, user.getUserName());
			pstmt.setString(8, user.getUserImg());
			
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return row;
	}
	
		
	public OM_UserDTO login(String userid, String userpw) {
		OM_UserDTO login = null;
		String sql = "select * from omuser where userid = ? and userpw = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				login = new OM_UserDTO();
				login.setUserIdx(rs.getInt("userIdx"));
				login.setUserid(rs.getString("userid"));
				login.setUserpw(rs.getString("userpw"));
				login.setNickname(rs.getString("nickname"));
				login.setPhoneNumber(rs.getString("phoneNumber"));
				login.setAddress(rs.getString("address"));
				login.setGender(rs.getString("gender"));
				login.setUserName(rs.getString("userName"));
				login.setUserImg(rs.getString("userImg"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return login;
	}
	
	public int userUpdate(OM_UserDTO user) {
		int row = 0;
		String sql = "update omuser set userpw=?, nickname=?, phoneNumber=?, address=?, userName=?, gender=?, userImg=? where userIdx="+ user.getUserIdx();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserpw());
			pstmt.setString(2, user.getNickname());
			pstmt.setString(3, user.getPhoneNumber());
			pstmt.setString(4, user.getAddress());
			pstmt.setString(5, user.getUserName());
			pstmt.setString(6, user.getGender());
			pstmt.setString(7, user.getUserImg());
			row = pstmt.executeUpdate();		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	public int secession(int idx) {
		int row =0;
		String sql = "delete from omuser where useridx = "+idx;
		
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
	
	public int trade(String userName, String phoneNumber, String address, String sellerId, String productName, int productIdx) {
		int row = 0;
		String sql = "insert into omtrade values (?, ?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, phoneNumber);
			pstmt.setString(3, address);
			pstmt.setString(4, sellerId);
			pstmt.setString(5, productName);
			pstmt.setInt(6, productIdx);
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return row;
	}
	
	public ArrayList<OM_UserDTO> tradelist(String userid){
		ArrayList<OM_UserDTO> list = new ArrayList<OM_UserDTO>();
		String sql ="select * from omtrade where sellerid = '" + userid  + "'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OM_UserDTO dto = new OM_UserDTO();
				dto.setProductIdx(rs.getInt("productIdx"));
				dto.setUserName(rs.getString("userName"));
				dto.setPhoneNumber(rs.getString("phoneNumber"));
				dto.setAddress(rs.getString("address"));
				dto.setProductName(rs.getString("productName"));
				list.add(dto);
			}					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}					
		return list;
	}
	
	public String idCheck (String userid){
		String answer=null;
		String sql ="select * from omuser where userid='" + userid +"'" ;
		
		try {
			conn =ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				answer = rs.getString("userid");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}			
		return answer;
	}
	
	public int listDelete(int idx) {
		int row = 0;
		String sql ="delete from omtrade where productIdx=" + idx;
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}			
		
		return row;
	}
	
	
	

}
