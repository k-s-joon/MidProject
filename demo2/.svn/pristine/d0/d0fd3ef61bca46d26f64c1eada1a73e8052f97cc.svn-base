package member.dao;

import java.util.List;
import java.util.Map;

import dao.MyBatisDao;
import member.vo.MemberVO;

public class MemberDaoImpl extends MyBatisDao implements IMemberDao {
	
	private static IMemberDao memDao;
	
	private MemberDaoImpl() {
		
	}

	public static IMemberDao getInstance() {
		if(memDao == null) {
			memDao = new MemberDaoImpl();
		}
		
		return memDao;
	}
	
	@Override
	public int insertMember(MemberVO mv) {
		return insert("member.insertMember", mv);
	}

	@Override
	public String checkMember(Map<String, Object> map) {
	
		return selectOne("member.checkMember", map);
	}

	@Override
	public int updateMember(MemberVO mv) {
		
		return update("member.updateMember", mv);
	}

	@Override
	public int updateMemberAll(MemberVO mv) {
		return update("member.updateMemberAll", mv);
	}

	@Override
	public int deleteMember(String memId) {
		
		return delete("member.deleteMember", memId);
	}

	@Override
	public List<MemberVO> selectAllMember() {
		
		List<MemberVO> memList = 
				selectList("member.selectAllMember");
		
		return memList;
	}

	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		
		List<MemberVO> memList = 
				selectList("member.searchMember", mv);
		
		return memList;
	}

	@Override
	public MemberVO getMember(String memId) {
		
		return selectOne("member.getMember", memId);
	}

	@Override
	public int updatePw(MemberVO mv) {
		// TODO Auto-generated method stub
		return update("member.updatePw", mv );
	}


	

}
