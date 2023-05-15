package member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.Logger;

import member.dao.FileDaoImpl;
import member.service.FileServiceImpl;
import member.service.IFileService;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.FileVO;
import member.vo.MemberVO;

/**
 * Servlet implementation class Mypage
 */
@MultipartConfig
@WebServlet("/MypageUpdate")
public class MypageUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MypageUpdate() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mv = new MemberVO();
		IMemberService service = MemberServiceImpl.getInstance();
		IFileService fileservice = FileServiceImpl.getInstance();
		String memId = (String) session.getAttribute("loginCode");
		mv = service.getMember(memId);
		List<FileVO> files = new ArrayList<FileVO>();
		files = fileservice.getFileList(memId);
		request.setAttribute("files", files);

		request.setAttribute("mv", mv);

		request.getRequestDispatcher("mypageupdate.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String memId = (String) session.getAttribute("loginCode");

		IFileService fileService = FileServiceImpl.getInstance();

		// 첨부파일 저장하기

		int cnt3 = fileService.deleteFileList(memId);

		FileVO atchFileVO = fileService.saveFileList(request, memId);
		int cnt = fileService.setProfile(atchFileVO);
		System.out.println(cnt);
		request.setAttribute("FileVO", atchFileVO);

		request.setCharacterEncoding("UTF-8");
		String memMbti = request.getParameter("memMbti");
		String memHobby = request.getParameter("memHobby");
		String memReligion = request.getParameter("memReligion");
		String memSmoking = request.getParameter("memSmoking");
		String memDrink = request.getParameter("memDrink");
		String memKey = request.getParameter("memKey");
		String memTel = request.getParameter("memTel");
		String memName = request.getParameter("memName");
		String memMail = request.getParameter("memMail");
		String memAddr = request.getParameter("memAddr");
		String memNick = request.getParameter("memNick");

		MemberVO mv = new MemberVO();
		mv.setMemMbti(memMbti);
		mv.setMemHobby(memHobby);
		mv.setMemReligion(memReligion);
		mv.setMemSmoking(memSmoking);
		mv.setMemDrink(memDrink);
		mv.setMemKey(memKey);
		mv.setMemTel(memTel);
		mv.setMemName(memName);
		mv.setMemMail(memMail);
		mv.setMemAddr(memAddr);
		mv.setMemNick(memNick);
		mv.setMemId(memId);

		IMemberService service = MemberServiceImpl.getInstance();

		int cnt2 = service.updateMemberAll(mv);

		if (cnt2 > 0) {

			request.setAttribute("updateCode", "yes");
			request.getRequestDispatcher("Mypage").forward(request, response);

		} else {
			request.setAttribute("updateCode", "no");
			request.getRequestDispatcher("MypageUpdate").forward(request, response);
		}

	}

}
