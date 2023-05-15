package notice.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import notice.dao.INoticeDao;
import notice.dao.NoticeDaoImpl;
import notice.vo.NoticeVO;

public class NoticeServiceImpl implements INoticeService {
	
	private static INoticeService noticeService;

	private INoticeDao noticeDao;
	
	public NoticeServiceImpl() {
		noticeDao = NoticeDaoImpl.getInstance();
	}
	
	public static INoticeService getInstance() {
		if(noticeService == null) {
			noticeService = new NoticeServiceImpl();
		}
		return noticeService;
	}

	@Override
	public int registerNotice(NoticeVO nv) {
		return noticeDao.insertNotice(nv);
	}

	@Override
	public boolean checkNotice(int noticeNo) {
		return noticeDao.checkNotice(noticeNo);
	}

	@Override
	public int modifyNotice(NoticeVO nv) {
		return noticeDao.updateNotice(nv);
	}

	@Override
	public int removeNotice(int noticeNo) {
		return noticeDao.deleteNotice(noticeNo);
	}

	@Override
	public List<NoticeVO> listAllNotice() {
		return noticeDao.selectAllNotice();
	}

	@Override
	public List<NoticeVO> searchNotice(NoticeVO nv) {
		return noticeDao.searchNotice(nv);
	}

	@Override
	public String loginChk(Map<String, Object> map) {
		String memId = "";

		try {
			 memId = noticeDao.loginChk(map);
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
			countList = noticeDao.countList();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return countList;
	}

	
	@Override
	public List<NoticeVO> noticeList(Map<String, Object> map2) {
		List<NoticeVO> list = null;
		try {
			list = noticeDao.noticeList(map2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public NoticeVO getNotice(int noticeNo) {
		return noticeDao.getNotice(noticeNo);
	}
	
}
