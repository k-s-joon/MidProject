package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@MultipartConfig
@WebServlet("/membersearch")
public class searchMemberController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String memId = req.getParameter("memId"); 

		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		MemberVO vo = memService.getMember(memId);
		req.setAttribute("vo", vo);
		
		req.getRequestDispatcher("/modal.jsp").forward(req, resp);
	}
}
