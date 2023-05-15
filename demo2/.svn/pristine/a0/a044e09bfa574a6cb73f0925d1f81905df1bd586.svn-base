package message.service;

import java.util.List;

import message.dao.IMessageDao;
import message.dao.MessageDao;
import message.vo.MessageVO;

public class MessageService implements IMessageService{

   private static IMessageService msgService;
   
   private IMessageDao msgDao;
   
   private MessageService() {
      msgDao = MessageDao.getInstance();
   }
   
   public static IMessageService getInstance() {
      if(msgService == null) {
         msgService = new MessageService();
      }
      return msgService;
   }
   
   @Override
   public int registMessage(MessageVO msgv) {
      
      return msgDao.insertMessage(msgv);
   }
//   @Override
//   public int registMessage(MessageVO msgv) {
//	   
//	   return msgDao.insertMessage(msgv);
//   }

   @Override
   public boolean checkMessage(String receiverNick) {
      return msgDao.checkMessage(receiverNick);
   }

   @Override
   public int modifyMessage(MessageVO msgv) {
      return msgDao.updateMessage(msgv);
   }

   @Override
   public int removeMessage(String msgNo) {
      return msgDao.deleteMessage(msgNo);
   }

   @Override
   public List<MessageVO> listAllMessage(String memNick) {
      return msgDao.selectAllMessage(memNick);
   }

   @Override
   public List<MessageVO> searchAllMessage(String memNick) {
      return msgDao.selectAllMessage(memNick);
   }
   public List<MessageVO> searchSendAllMessage(String memNick) {
      return msgDao.selectSendAllMessage(memNick);
   }


   @Override
   public List<MessageVO> searchMessage(MessageVO msgv) {
      // TODO Auto-generated method stub
      return null;
   }

@Override
public MessageVO getMessage(int msgNo) {
	return msgDao.getMessage(msgNo);
}



}