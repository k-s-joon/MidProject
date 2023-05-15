package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ask.service.AskServiceImpl;
import ask.service.IAskService;
import ask.vo.AskVO;
import free.service.FreeServiceImpl;
import free.service.IFreeService;
import free.vo.FreeVO;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/MypageBoard")
public class MypageBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MypageBoard() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String memId = (String)session.getAttribute("loginCode");
		
		IFreeService freeservice = FreeServiceImpl.getInstance();
		IAskService askservice = AskServiceImpl.getInstance();
		
		List<FreeVO> freeList = freeservice.getMemId(memId);
		List<AskVO> askList = askservice.getMemId(memId);
		
		
		request.setAttribute("freeList", freeList);
		request.setAttribute("askList", askList);
		
		
		request.getRequestDispatcher("mypageboard.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
}
