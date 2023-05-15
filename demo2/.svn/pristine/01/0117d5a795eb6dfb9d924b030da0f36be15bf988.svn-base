package message.dao;

import java.util.List;
import java.util.Map;

import dao.MyBatisDao;
import message.vo.MessageVO;

public class MessageDao extends MyBatisDao implements IMessageDao {
	
	private static IMessageDao msgDao;
	
	private MessageDao() {
		
	}

	public static IMessageDao getInstance() {
		if(msgDao == null) {
			msgDao = new MessageDao();
		}
		
		return msgDao;
	}
	
	@Override
	public int insertMessage(MessageVO msgv) {
		return insert("message.insertMessage", msgv);
	}

	@Override
	public String checkMessage(Map<String, Object> map) {
	
		return selectOne("message.checkMessage", map);
	}

	@Override
	public int updateMessage(MessageVO msgv) {
		
		return update("message.updateMessage", msgv);
	}

	@Override
	public int deleteMessage(String msgNo) {
		
		return delete("message.deleteMessage", msgNo);
	}

	@Override
	public List<MessageVO> selectAllMessage(String memNick) {
		
		List<MessageVO> msgList = 
				selectList("message.selectAllMessage", memNick);
		return msgList;
	}
	@Override
	public List<MessageVO> selectSendAllMessage(String memNick) {
		
		List<MessageVO> msgSendList = 
				selectList("message.selectSendAllMessage", memNick);
		
		return msgSendList;
	}

	@Override
	public List<MessageVO> searchMessage(MessageVO msgv) {
		
		List<MessageVO> msgList = 
				selectList("message.searchMessage", msgv);
		
		return msgList;
	}

	@Override
	public MessageVO getMessage(String memNick) {
		
		return selectOne("message.getMessage", memNick);
	}

	@Override
	public boolean checkMessage(String memNick) {
		return false;
	}

	@Override
	public MessageVO getMessage(int msgNo) {
		return selectOne("message.getMessage",msgNo);
	}

}
