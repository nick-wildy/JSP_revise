package dbpkg;

import java.sql.Date;

//			CUSTNO	NUMBER(6,0)
//			SALENOL	NUMBER(8,0)
//			PCOST	NUMBER(8,0)
//			AMOUNT	NUMBER(4,0)
//			PRICE	NUMBER(8,0)
//			PCODE	VARCHAR2(4 BYTE)
//			SDATE	DATE

public class MoneyDTO {

	private int custNo;
	private int saleNol;
	private int pcost;
	private int amount;
	private int price;
	private String pcode;
	private Date sdate;
	
	
	public int getCustNo() {
		return custNo;
	}
	public void setCustNo(int custNo) {
		this.custNo = custNo;
	}
	public int getSaleNol() {
		return saleNol;
	}
	public void setSaleNol(int saleNol) {
		this.saleNol = saleNol;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	
	
	
}
