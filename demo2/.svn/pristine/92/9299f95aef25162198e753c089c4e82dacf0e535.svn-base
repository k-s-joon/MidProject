package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import free.service.FreeServiceImpl;
import free.service.IFreeService;
import free.vo.FreeVO;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/free/update.do")
public class UpdateFreeController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int fNo = Integer.parseInt(req.getParameter("fNo"));
		
		IFreeService freeService = FreeServiceImpl.getInstance();
		
		FreeVO fv = freeService.getFree(fNo);

		req.setAttribute("fv",fv);
		
		req.getRequestDispatcher("/f_boa/f_edit.jsp").forward(req, resp);
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 아이디 값 받아오는 세션
	   	
		HttpSession session = req.getSession();
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO mv = new MemberVO();
		String memId = (String) session.getAttribute("loginCode");
		mv = service.getMember(memId);
		
		// 1. 파라미터 정보 가져오기
		System.out.println(">>");
		int fNo = Integer.parseInt(req.getParameter("fNo"));
		String fTitle = req.getParameter("fTitle");
		String fCon = req.getParameter("fCon");
	
		// 2. 서비스 객체 생성하기
		
		IFreeService freeService = FreeServiceImpl.getInstance();
		
		// 3. 게시글 정보 수정하기
		
		FreeVO fv = new FreeVO();
		fv.setfNo(fNo);
		fv.setfTitle(fTitle);
		fv.setfCon(fCon);
		fv.setMemId(memId);
		
		int cnt = freeService.modifyFree(fv);
		
		String msg = "";
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		session.setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/free/list.do");
	
		
	}

	
	
	
}
	
	
	

