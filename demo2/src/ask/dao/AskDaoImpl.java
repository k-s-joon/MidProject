package ask.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import ask.vo.AskVO;
import dao.MyBatisDao;

public class AskDaoImpl extends MyBatisDao implements IAskDao{
   
   private static IAskDao askDao;
   
   private AskDaoImpl() {
      
   }
   
   public static IAskDao getInstance() {
      if(askDao == null) {
         askDao = new AskDaoImpl();
      }
      return askDao;
   }

   @Override
   public int insertAsk(AskVO av) {
      return insert("ask.insertAsk", av);
   }

   @Override
   public boolean checkAsk (int askNo) {
      boolean isExist = false;
      
      int cnt = selectOne("ask.checkAsk", askNo);
      
      if(cnt > 0) {
         isExist = true;
      }
      return isExist;
   }

   @Override
   public int updateAsk(AskVO av) {
      return update("ask.updateAsk",av);
   }

   @Override
   public int deleteAsk(int askNo) {
      return delete("ask.deleteAsk", askNo);
   }

   @Override
   public List<AskVO> selectAllAsk() {
      List<AskVO> askList = selectList("ask.selectAllAsk");
      return askList;
   }

   @Override
   public List<AskVO> searchAsk(AskVO av) {
      List<AskVO> askList = selectList("ask.searchAsk",av);
      return askList;
   }

   @Override
   public int countList() throws SQLException {
      return selectOne("ask.countList");
   }

   @Override
   public String loginChk(Map<String, Object> map) throws SQLException {
      return selectOne("ask.loginChk",map);
   }

   @Override
   public List<AskVO> askList(Map<String, Object> map2) throws SQLException {
      return selectList("ask.askList",map2);
   }


   @Override
   public AskVO getAsk(int askNo) {
      return selectOne("ask.getAsk", askNo);
   }

	@Override
	public List<AskVO> getMemId(String memId) {
		// TODO Auto-generated method stub
		return selectList("ask.getMemId",memId);
	}

   
}