package ask.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ask.service.AskComServiceImpl;
import ask.service.IAskComService;
import ask.vo.AComVO;
import free.service.FreeComServiceImpl;
import free.service.IFreeComService;
import free.vo.FComVO;

@WebServlet(value="/ask/insertcom.do")
public class InsertAskComController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		IAskComService askcomService = AskComServiceImpl.getinstance();
		HttpSession session = req.getSession();

		String aComCon = req.getParameter("aComCon");
		String aComNick = (String) session.getAttribute("memNick");
		int askNo = Integer.parseInt(req.getParameter("askNo"));
		String memId = (String) session.getAttribute("loginCode");
		
		AComVO acv1 = new AComVO();
		acv1.setaComCon(aComCon);
		acv1.setaComNick(aComNick);
		acv1.setAskNo(askNo);
		acv1.setMemId(memId);
		
		System.out.println("내용 : " + aComCon);
		System.out.println("닉 : " + aComNick);
		System.out.println("넘버 : " + askNo);
		System.out.println("아이디 : " + memId);
		
		int cnt1 = askcomService.registAskCom(acv1);
		
		String msg1 = "";
		if(cnt1 > 0) {
			msg1 = "성공";
		}else {
			msg1 = "실패";
		}
		System.out.println(msg1);
						
		//req.setAttribute("fNo", Integer.toString(fNo));
		//resp.sendRedirect(req.getContextPath() + "/free/detail.do");
		
	}

}
