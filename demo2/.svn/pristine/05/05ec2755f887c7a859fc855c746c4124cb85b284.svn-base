package member.service;

import member.dao.IManagerDao;
import member.dao.ManagerDaoImpl;
import member.vo.MemberVO;

public class ManagerServiceImpl implements IManagerService {

	private static IManagerService managerService;
	
	private IManagerDao managerDao;
	
	private ManagerServiceImpl() {
		managerDao = ManagerDaoImpl.getInstance();
	}
	
	public static IManagerService getInstance() {
		if(managerService == null) {
			managerService = new ManagerServiceImpl();
		}
		return managerService;
	}
	
	@Override
	public int updateMember(MemberVO mv) {
		return managerDao.updateMember(mv);
	}

}
