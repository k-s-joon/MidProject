package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@MultipartConfig
@WebServlet("/searchmember")
public class Matching extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String memSex = req.getParameter("memSex");
		String memMbti = req.getParameter("memMbti");
		String memHobby = req.getParameter("memHobby");
		String memReligion = req.getParameter("memReligion");
		String memSmoking = req.getParameter("memSmoking");
		String memDrink = req.getParameter("memDrink");
		int memBirch = Integer.parseInt(req.getParameter("memBirch"));
		
		IMemberService memberService = MemberServiceImpl.getInstance();
		MemberVO mv = new MemberVO();
		mv.setMemSex(memSex);
		mv.setMemMbti(memMbti);
		mv.setMemHobby(memHobby);
		mv.setMemReligion(memReligion);
		mv.setMemSmoking(memSmoking);
		mv.setMemDrink(memDrink);
		mv.setMemBirch(memBirch);
		
		List<MemberVO> memList = memberService.searchMember(mv);

		req.setAttribute("memList", memList);

		req.getRequestDispatcher("/find/findfriend.jsp").forward(req, resp);
	}
}
