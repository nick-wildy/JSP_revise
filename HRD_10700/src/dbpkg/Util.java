package dbpkg;

import java.io.IOException;
// DB연결
import java.sql.*;
import java.util.ArrayList;



public class Util {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521/xe";
	private final String user = "c##itbank";
	private final String password = "it";

	public Util() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
//			System.out.println(conn);

		} catch (ClassNotFoundException e) {
			System.out.println("클래스를 불러올 수 없습니다 : " + e);
		} catch (SQLException e) {
			System.out.println("연결에 실패했습니다 : " + e);
		}

	}

	// 연결 종료 함수

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();

		} catch (Exception e) {

		}
	}

	// 회원번호 자동발생
	public String selectCustNo() {

		String sql = "select max(custno)+1 custno from member_tbl_02";
		String custNo = "";

		try {
//			System.out.println(conn);
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			rs.next();
			custNo = rs.getString("custNo");

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return custNo;
	}

	// 회원등록
	public int insert(MemberDTO ob) {
		int row = 0;
		String sql = "insert into member_tbl_02 (custNo, custname, phone, address, joindate, grade, city) "
				+ "values (?, ?, ?, ?, ?, ?, ?)";
		
		String joinDate = ob.getJoinDate();
		java.sql.Date Date = java.sql.Date.valueOf(joinDate);
		
//		System.out.println(ob.getCustNo());
//		System.out.println(ob.getCustName());
//		System.out.println(ob.getPhone());
//		System.out.println(ob.getAddress());
//		System.out.println(Date);
//		System.out.println(ob.getGrade());
//		System.out.println(ob.getCity());
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ob.getCustNo());
			pstmt.setString(2, ob.getCustName());
			pstmt.setString(3, ob.getPhone());
			pstmt.setString(4, ob.getAddress());
			pstmt.setDate(5, Date);

			pstmt.setString(6, ob.getGrade());
			pstmt.setString(7, ob.getCity());
			

			
			row = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {close();}
		return row;

	}
	
	


	// 회원매출조회
	
	public ArrayList<MemberDTO> priceList() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select me.custno, me.custname, me.grade, sum(mo.price) price\r\n" + 
				"    from member_tbl_02 me, money_tbl_02 mo \r\n" + 
				"    where me.custno = mo.custno\r\n" + 
				"    group by me.custno, me.custname, me.grade\r\n" + 
				"    order by sum(mo.price) desc";
		String grade = "";
		String price = "";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
			    MemberDTO dto = new MemberDTO();
			    dto.setCustNo(rs.getInt("custNo"));
			    dto.setCustName(rs.getString("custName"));
			    grade = rs.getString("grade");
			    if ("A".equals(grade)) {
			        grade = "VIP";
			        System.out.println(grade);
			    } else if (grade.equalsIgnoreCase("B")) {
			        grade = "일반";
			    } else if ("C".equals(grade)) {
			        grade = "직원";
			    }
			    dto.setGrade(grade);
			    price = rs.getString("price");
			    dto.setPrice(price);
			    list.add(dto);
//			    System.out.println(dto.getGrade());
			}

			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	// 회원목록 조회
	
	public ArrayList<MemberDTO> memberList() throws IOException{
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from member_tbl_02 order by custno asc";
		String grade = "";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setCustNo(rs.getInt("custNo"));
				dto.setCustName(rs.getString("custName"));
				dto.setPhone(rs.getString("phone"));
				dto.setAddress(rs.getString("address"));
				dto.setJoinDate(rs.getString("joinDate").substring(0,10));
				grade = rs.getString("grade");
			    if ("A".equals(grade)) {
			        grade = "VIP";
			        System.out.println(grade);
			    } else if (grade.equalsIgnoreCase("B")) {
			        grade = "일반";
			    } else if ("C".equals(grade)) {
			        grade = "직원";
			    }
			    dto.setGrade(grade);
			    dto.setCity(rs.getString("city"));
//				dto.setGrade(rs.getString("grade"));
			    
				
				
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close();}
		
		
		return list;
	}
	
	// 단일회원
	
	public MemberDTO selectOne(int custNo) {
		String sql = "select * from member_tbl_02 where custno =" + custNo;
		MemberDTO dto = new MemberDTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				
				dto.setCustNo(rs.getInt("custNo"));
				dto.setCustName(rs.getString("custName"));
				dto.setPhone(rs.getString("phone"));
				dto.setAddress(rs.getString("address"));
				dto.setJoinDate(rs.getString("joindate").substring(0,10));
				dto.setGrade(rs.getString("grade"));
				dto.setCity(rs.getString("city"));
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {close();}
		
		return dto;
	}
	
	
	// 회원수정
	
	public int modify(MemberDTO dto) {
		int row = 0;
		String sql = "update member_tbl_02 SET custname =?, phone=?, address=?, grade=?, joindate=?, city=? where custno="+dto.getCustNo();
		
		String joinDate = dto.getJoinDate();
		java.sql.Date Date = java.sql.Date.valueOf(joinDate);
		
		try {
			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, dto.getCustNo());
			pstmt.setString(1, dto.getCustName());
			pstmt.setString(2, dto.getPhone());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getGrade());
			pstmt.setDate(5, Date);
			pstmt.setString(6, dto.getCity());
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {close();}
		
		
		return row;
	}
	
	
}


