package member.dao;

import dao.MyBatisDao;
import member.vo.MemberVO;

public class ManagerDaoImpl extends MyBatisDao implements IManagerDao {

	private static IManagerDao managerDao;
	
	private ManagerDaoImpl() {
	}
	
	public static IManagerDao getInstance() {
		if(managerDao == null) {
			managerDao = new ManagerDaoImpl();
		}
		return managerDao;
	}
	
	@Override
	public int updateMember(MemberVO mv) {
		return update("member.updatemanager", mv);
	}

}
