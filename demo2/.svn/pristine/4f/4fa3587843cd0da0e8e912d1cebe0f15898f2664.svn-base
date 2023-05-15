package member.service;

import java.util.List;
import java.util.Map;

import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {

	private static IMemberService memService;
	
	private IMemberDao memDao;
	
	private MemberServiceImpl() {
		memDao = MemberDaoImpl.getInstance();
	}
	
	public static IMemberService getInstance() {
		if(memService == null) {
			memService = new MemberServiceImpl();
		}
		return memService;
	}
	
	@Override
	public int insertMember(MemberVO mv) {
		return memDao.insertMember(mv);
	}

	@Override
	public String checkMember(Map<String, Object> map) {
		String memId ="";
		try {
			
			memId = memDao.checkMember(map);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  memId;
	}

	@Override
	public MemberVO getMember(String memId) {
		return memDao.getMember(memId);
	}

	@Override
	public int updateMember(MemberVO mv) {
		return memDao.updateMember(mv);
	}
	
	@Override
	public int updateMemberAll(MemberVO mv) {
		return memDao.updateMemberAll(mv);
	}

	@Override
	public int deleteMember(String memId) {
		return memDao.deleteMember(memId);
	}

	@Override
	public List<MemberVO> selectAllMember() {
		return memDao.selectAllMember();
	}

	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		return memDao.searchMember(mv);
	}

	@Override
	public int updatePw(MemberVO mv) {
		// TODO Auto-generated method stub
		return memDao.updatePw(mv);
	}


	
	
	
	
	
	
}
