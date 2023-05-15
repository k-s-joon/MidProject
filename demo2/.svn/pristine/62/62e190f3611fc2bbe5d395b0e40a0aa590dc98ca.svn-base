package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/MypageDelete")
public class MypageDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MypageDelete() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mv = new MemberVO();
		IMemberService service = MemberServiceImpl.getInstance();
		String memId = (String) session.getAttribute("loginCode");
		mv = service.getMember(memId);
		
		request.setAttribute("memPw", mv.getMemPw());
		request.setAttribute("pwPost","no");
		request.getRequestDispatcher("mypagedelete.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO mv = new MemberVO();
		IMemberService service = MemberServiceImpl.getInstance();
		String memId = (String) session.getAttribute("loginCode");
		mv = service.getMember(memId);
		
		String memPw = mv.getMemPw();
		String memPw2 = (String)request.getParameter("memPw");
		
		System.out.println(memPw);
		System.out.println(memPw2);
		
		if(memPw.equals(memPw2)) {
			///request.setAttribute("pwCheckCode", "yes");
			//request.getRequestDispatcher("mypagedelete.jsp").forward(request, response);
			
			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			out.println("{\"pwCheckCode\":\"yes\"}");  // {"pwCheckCode" : "yes"}
			
			
		}else {
			//request.setAttribute("pwCheckCode","no");
			//request.getRequestDispatcher("mypagedelete.jsp").forward(request, response);
			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			out.println("{\"pwCheckCode\":\"no\"}");  // {"pwCheckCode" : "no"}
		}
	}

}
