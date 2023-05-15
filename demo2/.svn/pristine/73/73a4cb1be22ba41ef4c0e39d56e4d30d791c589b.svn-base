package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

/**
 * Servlet implementation class Mypage
 */
@WebServlet("/Mypage")
public class Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Mypage() {
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mv = new MemberVO();
		IMemberService service = MemberServiceImpl.getInstance();
		String memId = (String) session.getAttribute("loginCode");
		mv = service.getMember(memId);
		
	request.setAttribute(	"bir",mv.getMemBir());
	request.setAttribute(	"memId",mv.getMemId());
	request.setAttribute(	"memName",mv.getMemName());
	request.setAttribute(	"memNick",mv.getMemNick());
	request.setAttribute(	"memPw",mv.getMemPw());
	request.setAttribute(	"memSex",mv.getMemSex());
	request.setAttribute(	"memTel",mv.getMemTel());
	request.setAttribute(	"memMbti",mv.getMemMbti());
		
		
		request.getRequestDispatcher("mypage.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
