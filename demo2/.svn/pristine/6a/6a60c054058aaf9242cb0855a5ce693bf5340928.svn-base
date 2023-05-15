package message.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import message.service.ChatServiceImpl;
import message.service.IChatService;
import message.service.IMessageService;
import message.service.MessageService;
import message.vo.ChatVO;
import message.vo.MessageVO;

@WebServlet("/chatdetail")
public class Chatdetail extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String msgNos = req.getParameter("msgNo");
		int msgNo = Integer.parseInt(msgNos);
		
		IMessageService msgService = MessageService.getInstance();
		MessageVO mv = msgService.getMessage(msgNo);
		IChatService chatService = ChatServiceImpl.getInstance();
		List<ChatVO> cv = chatService.getChatList(msgNo);
		
		req.setAttribute("mv", mv);
		req.setAttribute("msgNo", msgNo);
		req.setAttribute("cv", cv);
		
		req.getRequestDispatcher("/chat.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ChatVO cv = new ChatVO();
		/*
		 *       var msgNo = $('#insertFrm').find('.info').find('input[name=msgNo]').val();
		      var fromNick = $('#insertFrm').find('.info').find('input[name=fromNick]').val();
		      var fromId = $('#insertFrm').find('.info').find('input[name=fromId]').val();
		      var chatContent
		 */
		String chatContent = req.getParameter("chatContent");
		String fromId = req.getParameter("fromId");
		String fromNick = req.getParameter("fromNick");
		String msgNos = req.getParameter("msgNo");
		int msgNo = 0;
		if("".equals(msgNos) != true) {
			msgNo = Integer.parseInt(msgNos);
		}
		
		IChatService chatService = ChatServiceImpl.getInstance();
		
		cv.setChatContent(chatContent);
		cv.setFromId(fromId);
		cv.setFromNick(fromNick);
		
		int cnt = chatService.insertChat(cv);
		String msg = "";
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		HttpSession session1 = req.getSession();
		session1.setAttribute("msg", msg);
		if("".equals(msgNos) != true) {
			req.setAttribute("msgNo", Integer.toString(msgNo));
		}
		resp.sendRedirect(req.getContextPath() + "/chatdetail");
	}
}
