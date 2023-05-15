package message.dao;

import java.util.List;

import dao.MyBatisDao;
import message.vo.ChatVO;

public class ChatDaoImpl extends MyBatisDao implements IChatDao {

	private static IChatDao chatDao;
	
	private ChatDaoImpl() {
		
	}
	
	public static IChatDao getInstance() {
		if(chatDao == null) {
			chatDao = new ChatDaoImpl();
		}
		return chatDao;
	}

	@Override
	public int insertChat(ChatVO cv) {
		return insert("chat.insertChat",cv);
	}

	@Override
	public boolean checkChat(String memId) {
		boolean isExist = false;
		int cnt = selectOne("chat.checkChat",memId);
		if(cnt > 0) {
			isExist = true;
		}
		return isExist;
	}

	@Override
	public ChatVO getMemId(String memId) {
		return selectOne("chat.getMemId",memId);
	}

	@Override
	public ChatVO getChat(int msgNo) {
		return selectOne("chat.getChat",msgNo);
	}

	@Override
	public int updateChat(ChatVO cv) {
		return update("chat.updateChat",cv);
	}

	@Override
	public int deleteChat(String memId) {
		return delete("chat.deleteChat", memId);
	}

	@Override
	public List<ChatVO> selectAllChat() {
		List<ChatVO> chatList = selectList("chat.searchChat");
		return chatList;
	}

	@Override
	public List<ChatVO> searchChat(ChatVO cv) {
		List<ChatVO> chatList = selectList("chat.searchChat");
		return chatList;
	}

	@Override
	public int deleteChat(int msgNo) {
		return delete("chat.deleteChat",msgNo);
	}

	@Override
	public List<ChatVO> getChatList(int msgNo) {
		return selectList("chat.getChatList",msgNo);
	}
	
	
}
