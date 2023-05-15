package ask.controller;

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
import ask.service.IAskService;
import ask.service.AskServiceImpl;
import ask.vo.AskVO;

@MultipartConfig
@WebServlet("/ask/update.do")
public class UpdateAskController  extends HttpServlet{
 
	@Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      

      // 1. 파라미터 정보 가져오기
      int askNo = Integer.parseInt(req.getParameter("askNo"));
      
      // 2. 서비스 객체 생성
      IAskService askService = 
            AskServiceImpl.getInstance();
      
            
      AskVO av = askService.getAsk(askNo);
      
       
      req.setAttribute("av", av);
      
      req.getRequestDispatcher("/ask/updateForm.jsp")
      .forward(req, resp);
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
	   // 아이디 값 받아오는 세션
	   	
	   HttpSession session = req.getSession();
	   IMemberService service = MemberServiceImpl.getInstance();
	   MemberVO mv = new MemberVO();
	   String memId = (String) session.getAttribute("loginCode");
	   mv = service.getMember(memId);
   
      // 1. 파라미터 정보 가져오기
      
      int askNo = Integer.parseInt(req.getParameter("askNo"));
      String askTitle = req.getParameter("askTitle");
      String askCon = (String)(req.getParameter("askCon").trim());
      
      // 2. 서비스 객체 생성하기
      
      IAskService askService = 
            AskServiceImpl.getInstance();   
   
      // 3. 게시글 정보 수정하기
      AskVO av = new AskVO();
     
      av.setAskNo(askNo);
      av.setAskTitle(askTitle);
      av.setAskCon(askCon);
      av.setMemId(memId);

      
      int cnt = askService.modifyAsk(av);
      
      
      String msg = "";
      
      if(cnt > 0 ) {
         msg = "성공";
      } else {
         msg = "실패";
      }
      
	  session.setAttribute("msg", msg);

      resp.sendRedirect(req.getContextPath() + "/ask/list.do");
   }
}