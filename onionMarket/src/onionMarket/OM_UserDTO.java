package onionMarket;

import java.io.File;

//	useridx         number          default omuser_seq.nextval primary key,
//	userid          varchar2(100)   unique not null,
//	userpw          varchar2(255)   not null,
//	nickname        varchar2(100)   not null,
//	phonenumber     varchar2(100)   not null,
//	address         varchar2(100)   not null,
//	gender          varchar2(10)   check(gender in('남','여')),
//	username        varchar2(100)   not null,
//	userimg         varchar2(255)


public class OM_UserDTO {
	private int userIdx;
	private String userid;
	private String userpw;
	private String nickname;
	private String phoneNumber;
	private String address;
	private String gender;
	private String userName;
	private String userImg;
	private String productName;
	private int productIdx;
	private File uploadFile;
	
	
	public int getProductIdx() {
		return productIdx;
	}
	public void setProductIdx(int productIdx) {
		this.productIdx = productIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public File getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	} 
	

	
	

}
