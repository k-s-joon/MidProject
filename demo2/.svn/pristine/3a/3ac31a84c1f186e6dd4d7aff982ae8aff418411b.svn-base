package message.service;

import java.util.List;

import message.dao.ChatDaoImpl;
import message.dao.IChatDao;
import message.vo.ChatVO;


public class ChatServiceImpl implements IChatService {

	private static IChatService chatService;
	
	private IChatDao chatDao;
	
	private ChatServiceImpl() {
		chatDao = ChatDaoImpl.getInstance();
	}
	
	public static IChatService getInstance() {
		if(chatService == null) {
			chatService = new ChatServiceImpl();
		}
		return chatService;
	}

	@Override
	public int insertChat(ChatVO cv) {
		return chatDao.insertChat(cv);
	}

	@Override
	public boolean checkChat(String memId) {
		return chatDao.checkChat(memId);
	}

	@Override
	public ChatVO getMemId(String memId) {
		return chatDao.getMemId(memId);
	}

	@Override
	public ChatVO getChat(int msgNo) {
		return chatDao.getChat(msgNo);
	}

	@Override
	public int updateChat(ChatVO cv) {
		return chatDao.updateChat(cv);
	}

	@Override
	public int deleteChat(String memId) {
		return chatDao.deleteChat(memId);
	}

	@Override
	public List<ChatVO> selectAllChat() {
		return chatDao.selectAllChat();
	}

	@Override
	public List<ChatVO> searchChat(ChatVO cv) {
		return chatDao.searchChat(cv);
	}

	@Override
	public int deleteChat(int msgNo) {
		return chatDao.deleteChat(msgNo);
	}

	@Override
	public List<ChatVO> getChatList(int msgNo) {
		return chatDao.getChatList(msgNo);
	}
	
	

}
