package notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;
import notice.vo.NoticeVO;

@WebServlet("/notice/detail.do")
public class DetailNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1.요청 파라미터 정보 가져오기
		int noticeNo = Integer.parseInt(req.getParameter("noticeNo"));
		
				
		// 2. 서비스 객체 생성하기
		INoticeService noticeService = NoticeServiceImpl.getInstance();
				
		NoticeVO nv = noticeService.getNotice(noticeNo);

		req.setAttribute("nv", nv);
		req.setAttribute("noticeNo", noticeNo);
		
		req.getRequestDispatcher("/notice/detailNotice.jsp")
		.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
