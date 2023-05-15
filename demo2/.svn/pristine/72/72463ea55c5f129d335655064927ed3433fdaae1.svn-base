package ask.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import ask.dao.AskDaoImpl;
import ask.dao.IAskDao;
import ask.vo.AskVO;

public class AskServiceImpl implements IAskService {
   
   private static IAskService askService;

   private IAskDao askDao;
   
   public AskServiceImpl() {
      askDao = AskDaoImpl.getInstance();
   }
   
   public static IAskService getInstance() {
      if(askService == null) {
         askService = new AskServiceImpl();
      }
      return askService;
   }

   @Override
   public int registerAsk(AskVO av) {
      return askDao.insertAsk(av);
   }

   @Override
   public boolean checkAsk(int askNo) {
      return askDao.checkAsk (askNo);
   }

   @Override
   public int modifyAsk(AskVO av) {
      return askDao.updateAsk(av);
   }

   @Override
   public int removeAsk(int askNo) {
      return askDao.deleteAsk(askNo);
   }

   @Override
   public List<AskVO> listAllAsk() {
      return askDao.selectAllAsk();
   }

   @Override
   public List<AskVO> searchAsk(AskVO av) {
      return askDao.searchAsk(av);
   }

   @Override
   public String loginChk(Map<String, Object> map) {
      String memId = "";

      try {
          memId = askDao.loginChk(map);
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      return memId;
   }

   @Override
   public int countList() {
      int countList = 0;
      try {
         countList = askDao.countList();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return countList;
   }

   
   @Override
   public List<AskVO> askList(Map<String, Object> map2) {
      List<AskVO> list = null;
      try {
         list = askDao.askList(map2);
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return list;
   }

   @Override
   public AskVO getAsk(int askNo) {
      return askDao.getAsk(askNo);
   }

@Override
public List<AskVO> getMemId(String memId) {
	// TODO Auto-generated method stub
	return askDao.getMemId(memId);
}
   
}