package 정재훈9A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class KFC_DAO {
	
private static KFC_DAO instance =  new KFC_DAO();
	
	public static KFC_DAO getInstance() {
		return instance;
	}

	private Connection conn;
	private PreparedStatement pstmt;
	private DataSource ds;

	private ResultSet rs;
	private Context init;
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e2) {}
	}

	private KFC_DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {

		}finally {
			close();
		}
		
	}
	
		public ArrayList<KFC_DTO> getList(){
		ArrayList<KFC_DTO> list = new ArrayList<KFC_DTO>();
		String sql ="select * from kfc_menu where kfcDelete = 1";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				KFC_DTO dto = new KFC_DTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setMenu(rs.getString("menu"));
				dto.setPrice(rs.getInt("price"));
				dto.setKfcCategory(rs.getString("kfcCategory"));
				dto.setMemo(rs.getString("memo"));
				dto.setImg(rs.getString("img"));
				dto.setKfcDelete(rs.getInt("kfcDelete"));
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return list;
	}
		
		public ArrayList<KFC_DTO> getChickenSetList(){
			ArrayList<KFC_DTO> list = new ArrayList<KFC_DTO>();
			String sql = "select * from kfc_menu where kfcDelete = 1 and kfcCategory='치킨&세트'";
			
			try {
				conn=ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					KFC_DTO dto = new KFC_DTO();
					dto.setIdx(rs.getInt("idx"));
					dto.setMenu(rs.getString("menu"));
					dto.setPrice(rs.getInt("price"));
					dto.setKfcCategory(rs.getString("kfcCategory"));
					dto.setMemo(rs.getString("memo"));
					dto.setImg(rs.getString("img"));
					dto.setKfcDelete(rs.getInt("kfcDelete"));
					list.add(dto);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return list;
		}
		
		public ArrayList<KFC_DTO> getBurgerSetList(){
			ArrayList<KFC_DTO> list = new ArrayList<KFC_DTO>();
			String sql = "select * from kfc_menu where kfcDelete = 1 and kfcCategory='버거&세트'";
			
			try {
				conn=ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					KFC_DTO dto = new KFC_DTO();
					dto.setIdx(rs.getInt("idx"));
					dto.setMenu(rs.getString("menu"));
					dto.setPrice(rs.getInt("price"));
					dto.setKfcCategory(rs.getString("kfcCategory"));
					dto.setMemo(rs.getString("memo"));
					dto.setImg(rs.getString("img"));
					dto.setKfcDelete(rs.getInt("kfcDelete"));
					list.add(dto);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return list;
			
		}
		
		public KFC_DTO getDetail(int idx) {
			KFC_DTO dto = new KFC_DTO();
			String sql = "select * from kfc_menu where kfcDelete = 1 and idx=" + idx;
			
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()) {
					dto.setIdx(rs.getInt("idx"));
					dto.setMenu(rs.getString("menu"));
					dto.setPrice(rs.getInt("price"));
					dto.setKfcCategory(rs.getString("kfcCategory"));
					dto.setMemo(rs.getString("memo"));
					dto.setImg(rs.getString("img"));
					dto.setKfcDelete(rs.getInt("kfcDelete"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return dto;
		}
		
		public int modify(KFC_DTO user) {
			int row=0;
			String sql = "update kfc_menu set menu=?, price=?, kfcCategory=?, memo=?, img=?, kfcDelete=? where idx=" + user.getIdx();
			
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, user.getMenu());
				pstmt.setInt(2, user.getPrice());
				pstmt.setString(3, user.getKfcCategory());
				pstmt.setString(4, user.getMemo());
				pstmt.setString(5, user.getImg());
				pstmt.setInt(6, user.getKfcDelete());
				
				row=pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return row;
		}
		
		
		public int delete (int idx) {
			int row=0;
			String sql="update kfc_menu set kfcDelete=2 where idx=" + idx;
			
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(sql);
				row=pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close();
			}
			
			
			
			return row;
		}
	
		
		public ArrayList<KFC_DTO> getSnackList(){
			ArrayList<KFC_DTO> list = new ArrayList<KFC_DTO>();
			String sql = "select * from kfc_menu where kfcDelete = 1 and kfcCategory='스낵&사이드'";
			
			try {
				conn=ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					KFC_DTO dto = new KFC_DTO();
					dto.setIdx(rs.getInt("idx"));
					dto.setMenu(rs.getString("menu"));
					dto.setPrice(rs.getInt("price"));
					dto.setKfcCategory(rs.getString("kfcCategory"));
					dto.setMemo(rs.getString("memo"));
					dto.setImg(rs.getString("img"));
					dto.setKfcDelete(rs.getInt("kfcDelete"));
					list.add(dto);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return list;
			
		}
		
		public ArrayList<KFC_DTO> getBeverageList(){
			ArrayList<KFC_DTO> list = new ArrayList<KFC_DTO>();
			String sql = "select * from kfc_menu where kfcDelete = 1 and kfcCategory='음료'";
			
			try {
				conn=ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					KFC_DTO dto = new KFC_DTO();
					dto.setIdx(rs.getInt("idx"));
					dto.setMenu(rs.getString("menu"));
					dto.setPrice(rs.getInt("price"));
					dto.setKfcCategory(rs.getString("kfcCategory"));
					dto.setMemo(rs.getString("memo"));
					dto.setImg(rs.getString("img"));
					dto.setKfcDelete(rs.getInt("kfcDelete"));
					list.add(dto);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return list;
			
		}
		
		public int insert(KFC_DTO dto) {
			int row=0;
			String sql="insert into kfc_menu(menu, price, kfcCategory, memo, img) values(?, ?, ?, ?, ?)";
			
			try {
				conn = ds.getConnection();
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getMenu());
				pstmt.setInt(2, dto.getPrice());
				pstmt.setString(3, dto.getKfcCategory());
				pstmt.setString(4, dto.getMemo());
				pstmt.setString(5, dto.getImg());
								
				row=pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			
			
			return row;
		}
	
	
	

}
