package message.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import message.service.IMessageService;
import message.service.MessageService;
import message.vo.MessageVO;

@WebServlet("/message/Sendlist.do")
public class MessageSendListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession session = req.getSession();
		String memNick = (String) session.getAttribute("memNick");
		
		IMessageService msgService = MessageService.getInstance();
		
		List<MessageVO> msgSendList = msgService.searchSendAllMessage(memNick);

		
		req.setAttribute("msgSendList", msgSendList);
		
		req.getRequestDispatcher("/message/messageSendList.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
