package notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;
import notice.vo.NoticeVO;

@WebServlet(value = "/notice/insert.do")
public class InsertNoticeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/notice/insertNotice.jsp")
		.forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		NoticeVO nv = new NoticeVO();
		
		String noticeTitle = req.getParameter("noticeTitle"); 
		String noticeCon = req.getParameter("noticeCon"); 
		String noticeNick = req.getParameter("noticeNick"); 
		String memP = req.getParameter("memP");
		String memId = req.getParameter("memId");
	
		INoticeService noticeService = NoticeServiceImpl.getInstance();
		
		nv.setNoticeTitle(noticeTitle);
		nv.setNoticeCon(noticeCon);
		nv.setNoticeNick(noticeNick);
		nv.setMemP(memP);
		nv.setMemId(memId);
		
		
		int cnt = noticeService.registerNotice(nv);
		
		String msg = "";
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		resp.sendRedirect(
				req.getContextPath() + "/notice/list.do");	
	}
		
}
