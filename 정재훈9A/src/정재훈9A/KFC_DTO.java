package 정재훈9A;

import java.io.File;

public class KFC_DTO {
	private String menu;
	private int price;
	private String kfcCategory;
	private String memo;
	private String img;
	private int kfcDelete;
	private int idx;
	private File uploadFile;
	public File getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getKfcCategory() {
		return kfcCategory;
	}
	public void setKfcCategory(String kfcCategory) {
		this.kfcCategory = kfcCategory;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getKfcDelete() {
		return kfcDelete;
	}
	public void setKfcDelete(int kfcDelete) {
		this.kfcDelete = kfcDelete;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
	

}
