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
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;

@WebServlet("/free/delete.do")
public class DeleteFreeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 파라미터 정보 가져오기
		int fNo = Integer.parseInt(req.getParameter("fNo"));
		
		// 2. 서비스 객체 생성하기
		IFreeService freeService = FreeServiceImpl.getInstance();
		
		int cnt = freeService.removeFree(fNo);
		
		String msg = "";
		
		if(cnt > 0 ) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		
		resp.sendRedirect(req.getContextPath() + "/free/list.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
