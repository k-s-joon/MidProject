package notice.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import dao.MyBatisDao;
import free.vo.FreeVO;
import notice.vo.NoticeVO;

public class NoticeDaoImpl extends MyBatisDao implements INoticeDao{
   
   private static INoticeDao noticeDao;
   
   private NoticeDaoImpl() {
      
   }
   
   public static INoticeDao getInstance() {
      if(noticeDao == null) {
         noticeDao = new NoticeDaoImpl();
      }
      return noticeDao;
   }

   @Override
   public int insertNotice(NoticeVO nv) {
      return insert("notice.insertNotice", nv);
   }

   @Override
   public boolean checkNotice(int noticeNo) {
      boolean isExist = false;
      
      int cnt = selectOne("notice.checkNotice", noticeNo);
      
      if(cnt > 0) {
         isExist = true;
      }
      return isExist;
   }

   @Override
   public int updateNotice(NoticeVO nv) {
      return update("notice.updateNotice",nv);
   }

   @Override
   public int deleteNotice(int noticeNo) {
      return delete("notice.deleteNotice", noticeNo);
   }

   @Override
   public List<NoticeVO> selectAllNotice() {
      List<NoticeVO> noticeList = selectList("notice.selectAllNotice");
      return noticeList;
   }

   @Override
   public List<NoticeVO> searchNotice(NoticeVO nv) {
      List<NoticeVO> noticeList = selectList("notice.searchNotice",nv);
      return noticeList;
   }

   @Override
   public int countList() throws SQLException {
      return selectOne("notice.countList");
   }

   @Override
   public String loginChk(Map<String, Object> map) throws SQLException {
      return selectOne("notice.loginChk",map);
   }

   @Override
   public List<NoticeVO> noticeList(Map<String, Object> map2) throws SQLException {
      return selectList("notice.noticeList",map2);
   }


   @Override
   public NoticeVO getNotice(int noticeNo) {
      return selectOne("notice.getNotice", noticeNo);
   }

   
}