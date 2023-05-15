package comm;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.FileServiceImpl;
import member.service.IFileService;
import member.vo.FileVO;

@WebServlet("/download.do")
public class FileDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("loginCode");
		String fileSn = (String)req.getParameter("fileSn");
		String fileNo = (String)req.getParameter("fileNo");
		
		System.out.println(fileSn);
		IFileService fileService = FileServiceImpl.getInstance();
		FileVO fv = new FileVO();
		fv.setFileSn(Integer.parseInt(fileSn));
		fv.setFileNo(Integer.parseInt(fileNo));
		FileVO fv2 = fileService.getFileDetail(fv);
		
		
		//FileVO = fileService.getFileDetail(FileVO);
		
		/*
	 	Content-Disposition 헤더에 대하여...
	 	
	 	1. 응답헤더에 사용되는경우... ex)파일업로드
	 	Content-Disposition: inline(default)
	 	Content-Disposition: attachment //파일다운로드
	 	Content-Disposition: attachment; filename="a.jpg"
	 	*/
		
		
		
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition", "attachment; filename=\""  
		+ URLEncoder.encode(fv2.getFileOgnm(),"utf-8").replaceAll("\\+", "%20")+"\"");
		
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(fv2.getFileStre()));
		
		BufferedOutputStream bos = new BufferedOutputStream(resp.getOutputStream());
		
		int data = 0;
		while((data = bis.read()) != -1) {
			bos.write(data);
			
		}
		bis.close();
		bos.close();
		

		
		
	}
		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
