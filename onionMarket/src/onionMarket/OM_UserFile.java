package onionMarket;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class OM_UserFile {
	
	private static String saveDirectory;
	private static int maxPostSize = 1024 * 1024 * 20;
	private static String encoding = "UTF-8";
	private static FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();
	
	public static OM_UserDTO getDTO(HttpServletRequest request) throws IOException {
		OM_UserDTO dto =  null;
		
		if(saveDirectory == null) {
			saveDirectory = request.getSession().getServletContext().getRealPath("onionMarketPic");
		}
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		MultipartRequest mpRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		dto = new OM_UserDTO();
		
//		dto.setUserIdx(Integer.parseInt(mpRequest.getParameter("userIdx")));
		dto.setAddress(mpRequest.getParameter("address"));
		dto.setUserid(mpRequest.getParameter("userid"));
		dto.setUserpw(mpRequest.getParameter("userpw"));
		dto.setNickname(mpRequest.getParameter("nickname"));
		dto.setPhoneNumber(mpRequest.getParameter("phoneNumber"));
		dto.setUserName(mpRequest.getParameter("userName"));
		dto.setGender(mpRequest.getParameter("gender"));
		if(mpRequest.getOriginalFileName("userImg") == null) {
	         dto.setUserImg("standard.jpg");
	      }else {
	         dto.setUserImg(mpRequest.getOriginalFileName("userImg"));
	      }
		dto.setUploadFile(mpRequest.getFile("userImg"));
		

		return  dto;
	}
	
	public static OM_UserDTO getDTO2(HttpServletRequest request) throws IOException {
		OM_UserDTO dto =  null;
		
		if(saveDirectory == null) {
			saveDirectory = request.getSession().getServletContext().getRealPath("onionMarketPic");
		}
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		MultipartRequest mpRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		dto = new OM_UserDTO();
		
		dto.setUserIdx(Integer.parseInt(mpRequest.getParameter("userIdx")));
		dto.setAddress(mpRequest.getParameter("address"));
		dto.setUserid(mpRequest.getParameter("userid"));
		dto.setUserpw(mpRequest.getParameter("userpw"));
		dto.setNickname(mpRequest.getParameter("nickname"));
		dto.setPhoneNumber(mpRequest.getParameter("phoneNumber"));
		dto.setUserName(mpRequest.getParameter("userName"));
		dto.setGender(mpRequest.getParameter("gender"));
		if(mpRequest.getOriginalFileName("userImg") == "standard.jpg") {
	         dto.setUserImg("standard.jpg");
	      }
		else {
	         dto.setUserImg(mpRequest.getOriginalFileName("userImg"));
	      }
		dto.setUploadFile(mpRequest.getFile("userImg"));
		

		return  dto;
	}
	
}
