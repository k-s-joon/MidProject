package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.IManagerService;
import member.service.ManagerServiceImpl;
import member.vo.MemberVO;


@WebServlet("/updatemanager")
public class ManagerUpdateMember extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String memId = req.getParameter("memId");
//		String smemP = req.getParameter("memP");
//		int memP = Integer.parseInt(smemP);
		int memP = Integer.parseInt(req.getParameter("memP"));

		IManagerService managerService = ManagerServiceImpl.getInstance();
		
		MemberVO mv = new MemberVO();
		mv.setMemP(memP);
		mv.setMemId(memId);
		
		int cnt = managerService.updateMember(mv);
		
		req.setAttribute("mv", cnt);

		resp.sendRedirect(req.getContextPath() + "/membermanager");


	}
}
