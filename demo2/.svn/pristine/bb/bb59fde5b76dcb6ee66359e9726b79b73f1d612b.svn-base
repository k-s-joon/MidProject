package free.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import free.service.FreeComServiceImpl;
import free.service.FreeServiceImpl;
import free.service.IFreeComService;
import free.service.IFreeService;
import free.vo.FComVO;
import free.vo.FreeVO;

@WebServlet("/free/detail.do")
public class DetailFreeController extends HttpServlet {

	
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String fNos = req.getParameter("fNo");
		int fNo = Integer.parseInt(fNos);
		
		IFreeService freeService = FreeServiceImpl.getInstance();
		FreeVO fv = freeService.getFree(fNo);
		IFreeComService freecomService = FreeComServiceImpl.getinstance();
		List<FComVO> fcv =  freecomService.getFreeComList(fNo);
		
		req.setAttribute("fv", fv);
		req.setAttribute("fNo", fNo);
		req.setAttribute("fcv", fcv);		
		
		System.out.println("번호 : "  + fNo);
		
		req.getRequestDispatcher("/f_boa/f_view.jsp").forward(req, resp);

	}
		
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		FComVO fcv1 = new FComVO();
		
		String fComCon = req.getParameter("fComCon");
		String fComNick = req.getParameter("fComNick");
		String memId = req.getParameter("memId");
		
		String fNos = req.getParameter("fNo");
		int fNo = 0;
		if("".equals(fNos) != true) {
			fNo = Integer.parseInt(fNos);			
		}
	
		
		IFreeComService freecomService = FreeComServiceImpl.getinstance();
		
		fcv1.setfComCon(fComCon);
		fcv1.setfComNick(fComNick);
		fcv1.setMemId(memId);
		
		System.out.println("set 번호 : "  + fNo);

		int cnt1 = freecomService.registFreeCom(fcv1);
		
		System.out.println("fcv1 번호 : "  + fcv1);
		String msg1 = "";
		if(cnt1 > 0) {
			msg1 = "성공";
		}else {
			msg1 = "실패";
		}
		System.out.println(msg1);
		
		HttpSession session1 = req.getSession();
		session1.setAttribute("msg", msg1);
		if("".equals(fNos) != true) {
			req.setAttribute("fNo", Integer.toString(fNo));
		}
		resp.sendRedirect(req.getContextPath() + "/free/detail.do");
	}	
}
