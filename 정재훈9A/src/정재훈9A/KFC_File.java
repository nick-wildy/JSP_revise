package 정재훈9A;


import java.io.File;
import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;


public class KFC_File {
	


	private static String saveDirectory;
	private static int maxPostSize = 1024 * 1024 * 20;
	private static String encoding = "UTF-8";
	private static FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();

	public static KFC_DTO getDTO(HttpServletRequest request) throws IOException, ParseException {
		
		KFC_DTO dto = null;
		
		if(saveDirectory == null) {
			saveDirectory = request.getSession().getServletContext().getRealPath("image");
		}
		
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		
		MultipartRequest mpRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		dto =  new KFC_DTO();	
		dto.setMenu(mpRequest.getParameter("menu"));
		dto.setPrice(Integer.parseInt(mpRequest.getParameter("price")));
		dto.setKfcCategory(mpRequest.getParameter("kfcCategory"));
		dto.setMemo(mpRequest.getParameter("memo"));
		dto.setImg(mpRequest.getOriginalFileName("img"));
		dto.setUploadFile(mpRequest.getFile("img"));
		
		

		
		return dto;
	}

}
