package notice.service;

import java.util.List;
import java.util.Map;

import notice.vo.NoticeVO;

// 실제 DB와 연결해서 SQL 문을 수행하여 결과를 받아 서비스에 전달하는 Service 인터페이스

public interface INoticeService {

	public int registerNotice(NoticeVO nv);
	// DB에 등록
	
	public boolean checkNotice(int noticeNo);
	// 공지사항 존재 여부 확인
	
	public int modifyNotice(NoticeVO nv);
	// 공지사항 수정
	
	public int removeNotice(int noticeNo);
	// 공지사항 삭제	
	
	public List<NoticeVO> listAllNotice();
	// 공지사항 조회
	
	public List<NoticeVO> searchNotice(NoticeVO nv);
	// 검색

	/* board에서 복붙*/
	public String loginChk(Map<String,Object> map);

	
	public int countList();
		
	
	public List<NoticeVO> noticeList (Map<String, Object> map2) ;

	
	public NoticeVO getNotice(int noticeNo);
	
}
