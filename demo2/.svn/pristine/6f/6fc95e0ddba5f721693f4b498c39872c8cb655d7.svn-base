package message.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import message.service.ChatServiceImpl;
import message.service.IChatService;
import message.vo.ChatVO;

@WebServlet(value="/insertchat")
public class InsertChat extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IChatService chatService = ChatServiceImpl.getInstance();
		HttpSession session = req.getSession();
		
		String chatContent = req.getParameter("chatContent");
		String fromId = (String) session.getAttribute("loginCode");
		int msgNo = Integer.parseInt(req.getParameter("msgNo"));
		String fromNick = (String) session.getAttribute("memNick");
		
		ChatVO cv = new ChatVO();
		cv.setChatContent(chatContent);
		cv.setFromNick(fromNick);
		cv.setFromId(fromId);
		cv.setMsgNo(msgNo);
		
		int cnt = chatService.insertChat(cv);
		
		String msg = "";
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
	}
}
