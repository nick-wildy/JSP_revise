package dbpkg;


//		CUSTNO	NUMBER(6,0)
//		CUSTNAME	VARString2(20 BYTE)
//		PHONE	VARString2(13 BYTE)
//		ADDRESS	VARString2(60 BYTE)
//		JOINDATE	DATE
//		GRADE	char(1 BYTE)
//		CITY	char(2 BYTE)
public class MemberDTO {
	
	private int custNo;
	private String custName;
	private String phone;
	private String address;
	private String joinDate;
	private String grade;
	private String city;
	
	private String price;
	
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getCustNo() {
		return custNo;
	}
	public void setCustNo(int custNo) {
		this.custNo = custNo;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	
	

}
