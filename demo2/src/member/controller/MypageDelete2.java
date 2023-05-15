package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.FileServiceImpl;
import member.service.IFileService;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

/**
 * Servlet implementation class MypageDelete2
 */
@WebServlet("/MypageDelete2")
public class MypageDelete2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MypageDelete2() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		MemberVO mv = new MemberVO();
		IMemberService service = MemberServiceImpl.getInstance();
		IFileService fileservice = FileServiceImpl.getInstance();
		String memId = (String) session.getAttribute("loginCode");
		int cnt;
		
		cnt = service.deleteMember(memId);
		int cnt2 = fileservice.deleteFileList(memId);
		if(cnt>0) {
			
			request.setAttribute("deleteCode", "yes");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else {
			request.setAttribute("deleteCode", "no");
			request.getRequestDispatcher("mypage.jsp").forward(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
