
package onionMarket;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class OM_ProductFile {

	
	private static String saveDirectory;
	private static int maxPostSize = 1024 * 1024 * 20;
	private static String encoding = "UTF-8";
	private static FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();

	public static OM_ProductDTO getDTO(HttpServletRequest request) throws IOException, ParseException {
		
		OM_ProductDTO dto = null;
		
		if(saveDirectory == null) {
			saveDirectory = request.getSession().getServletContext().getRealPath("onionMarketPic");
		}
		
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		
		MultipartRequest mpRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		dto =  new OM_ProductDTO();	
		
//		dto.setProductIdx(Integer.parseInt(mpRequest.getParameter("productIdx")));
		dto.setProductName(mpRequest.getParameter("productName"));		
		dto.setProductPrice(Integer.parseInt(mpRequest.getParameter("productPrice")));
		dto.setLoginUserId(mpRequest.getParameter("loginUserId"));
		dto.setLoginUserAddress(mpRequest.getParameter("loginUserAddress"));	
		dto.setLoginUserNick(mpRequest.getParameter("loginUserNick"));
		dto.setProductText(mpRequest.getParameter("productText"));	
		dto.setProductImg(mpRequest.getOriginalFileName("uploadFile"));
		dto.setLoginUserImg(mpRequest.getParameter("loginUserImg"));	
		dto.setUploadFile(mpRequest.getFile("uploadFile"));		
			

		
		return dto;
	}
	
public static OM_ProductDTO getDTO2(HttpServletRequest request) throws IOException, ParseException {
		
		OM_ProductDTO dto = null;
		
		if(saveDirectory == null) {
			saveDirectory = request.getSession().getServletContext().getRealPath("onionMarketPic");
		}
		
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		
		MultipartRequest mpRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		dto =  new OM_ProductDTO();	
		
		dto.setProductIdx(Integer.parseInt(mpRequest.getParameter("productIdx")));
		dto.setProductName(mpRequest.getParameter("productName"));		
		dto.setProductPrice(Integer.parseInt(mpRequest.getParameter("productPrice")));
		dto.setLoginUserId(mpRequest.getParameter("loginUserId"));
		dto.setLoginUserAddress(mpRequest.getParameter("loginUserAddress"));	
		dto.setLoginUserNick(mpRequest.getParameter("loginUserNick"));
		dto.setProductText(mpRequest.getParameter("productText"));	
		dto.setProductImg(mpRequest.getOriginalFileName("uploadFile"));
		dto.setLoginUserImg(mpRequest.getParameter("loginUserImg"));	
		dto.setUploadFile(mpRequest.getFile("uploadFile"));		
			

		
		return dto;
	}
	
	
}

