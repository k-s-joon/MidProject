package ask.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ask.service.AskComServiceImpl;
import ask.service.AskServiceImpl;
import ask.service.IAskComService;
import ask.service.IAskService;
import ask.vo.AComVO;
import ask.vo.AskVO;

@WebServlet("/ask/detail.do")
public class DetailAskController extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

@Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	    AComVO acv1 = new AComVO();
		
		String aComCon = req.getParameter("aComCon");
		String aComNick = req.getParameter("aComNick");
		String memId = req.getParameter("memId");
		
		String askNos = req.getParameter("askNo");
		int askNo = 0;
		if("".equals(askNos) != true) {
			askNo = Integer.parseInt(askNos);			
		}
	
		
		
		IAskComService askcomService = AskComServiceImpl.getinstance();
		
		acv1.setaComCon(aComCon);
		acv1.setaComNick(aComNick);
		acv1.setMemId(memId);
		
		int cnt1 = askcomService.registAskCom(acv1);
		
		String msg1 = "";
		if(cnt1 > 0) {
			msg1 = "성공";
		}else {
			msg1 = "실패";
		}
		System.out.println(msg1);
		
		HttpSession session1 = req.getSession();
		session1.setAttribute("msg", msg1);
		if("".equals(askNos) != true) {
			req.setAttribute("askNo", Integer.toString(askNo));
		}
		resp.sendRedirect(req.getContextPath() + "/ask/detail.do");
   }
}