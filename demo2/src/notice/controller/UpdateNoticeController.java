package notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;
import notice.vo.NoticeVO;

@MultipartConfig
@WebServlet("/notice/update.do")
public class UpdateNoticeController  extends HttpServlet{
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      
      // 아이디 값 받아오는 세션
      
      HttpSession session = req.getSession();
      MemberVO mv = new MemberVO();
      IMemberService service = MemberServiceImpl.getInstance();
      String memId = (String) session.getAttribute("loginCode");
      mv = service.getMember(memId);
      
      
      // 1. 파라미터 정보 가져오기
      int noticeNo = Integer.parseInt(req.getParameter("noticeNo"));
      
      // 2. 서비스 객체 생성
      INoticeService noticeService = 
            NoticeServiceImpl.getInstance();
      
            
      NoticeVO nv = noticeService.getNotice(noticeNo);
      
       
      req.setAttribute("nv", nv);
      
      req.getRequestDispatcher("/notice/updateForm.jsp")
      .forward(req, resp);
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      // 1. 파라미터 정보 가져오기
      
      int noticeNo = Integer.parseInt(req.getParameter("noticeNo"));
      String noticeTitle = req.getParameter("noticeTitle");
      String noticeCon = (String)(req.getParameter("noticeCon").trim());
      
      // 2. 서비스 객체 생성하기
      
      INoticeService noticeService = 
            NoticeServiceImpl.getInstance();   
   
      // 3. 회원정보 수정하기
      NoticeVO nv = new NoticeVO();
      
      /////////////////////////////////////////////////
      nv.setNoticeNo(noticeNo);
      nv.setNoticeTitle(noticeTitle);
      nv.setNoticeCon(noticeCon);

      
      int cnt = noticeService.modifyNotice(nv);
      
      
      String msg = "";
      
      if(cnt > 0 ) {
         msg = "성공";
      } else {
         msg = "실패";
      }
      
      HttpSession session = req.getSession();
      session.setAttribute("msg", msg);
      
      
      resp.sendRedirect(req.getContextPath() + "/notice/list.do");
   }
}