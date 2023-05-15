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
@WebServlet("/memberinsert")
public class InsertMemberController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String memId = req.getParameter("memId"); 
		String memPw = req.getParameter("memPw"); 
		String memTel = req.getParameter("memTel"); 
		String memName = req.getParameter("memName");
		String memBir = req.getParameter("memBir");
		String memMail = req.getParameter("memMail"); 
		String memAddr = req.getParameter("memAddr");
		String memSex = req.getParameter("memSex"); 
		String memNick = req.getParameter("memNick");
		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		MemberVO mv = new MemberVO();
		mv.setMemId(memId);
		mv.setMemPw(memPw);
		mv.setMemTel(memTel);
		mv.setMemName(memName);
		mv.setMemBir(memBir);
		mv.setMemMail(memMail);
		mv.setMemAddr(memAddr);
		mv.setMemSex(memSex);
		mv.setMemNick(memNick);

		
		int cnt = memService.insertMember(mv);
		
		String msg = "";
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		resp.sendRedirect(
				req.getContextPath() + "/memberinsert");	
	}
}
