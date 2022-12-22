package onionMarket;

import java.io.File;
import java.sql.Date;

//	productidx         number           default omproduct_seq.nextval primary key,
//	productname        varchar2(100)    not null,
//	productprice       number           not null,
//	productDate        Date             default sysdate,
//	loginuserid        varchar2(100)    not null,
//	loginuseraddress    varchar2(100)   not null,
//	loginusernick       varchar2(100)   not null,
//	loginuserimg        varchar2(100),
//	producttext         varchar2(100),
//	productimg         varchar2(255)

public class OM_ProductDTO {
	private int productIdx;
	private String productName;
	private int productPrice;
	private Date productDate;
	private String loginUserId;
	private String loginUserAddress;
	private String loginUserNick;
	private String loginUserImg;
	private String productText;
	private String productImg;
	private File uploadFile;
	
	
	public int getProductIdx() {
		return productIdx;
	}
	public void setProductIdx(int productIdx) {
		this.productIdx = productIdx;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public Date getProductDate() {
		return productDate;
	}
	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}
	public String getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}
	public String getLoginUserAddress() {
		return loginUserAddress;
	}
	public void setLoginUserAddress(String loginUserAddress) {
		this.loginUserAddress = loginUserAddress;
	}
	public String getLoginUserNick() {
		return loginUserNick;
	}
	public void setLoginUserNick(String loginUserNick) {
		this.loginUserNick = loginUserNick;
	}
	public String getLoginUserImg() {
		return loginUserImg;
	}
	public void setLoginUserImg(String loginUserImg) {
		this.loginUserImg = loginUserImg;
	}
	public String getProductText() {
		return productText;
	}
	public void setProductText(String productText) {
		this.productText = productText;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public File getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}
	
		
}
