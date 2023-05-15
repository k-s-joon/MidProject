package free.dao;

import java.util.List;

import dao.MyBatisDao;
import free.vo.FComVO;

public class FreeComDaoImpl extends MyBatisDao implements IFreeComDao {

	private static IFreeComDao freecomdao;
	private FreeComDaoImpl() {
	}
	
	public static IFreeComDao getinstance() {
		if(freecomdao == null) {
			freecomdao = new FreeComDaoImpl();
		}
		return freecomdao;
	}
	
	@Override
	public int insertFreeCom(FComVO fcv) {
		return insert("freecom.insertFreeCom", fcv);
	
	}

	@Override
	public boolean checkFreeCom(String memId) {
		boolean isExist = false;
		int cnt = selectOne("freecom.checkFreeCom",memId);
		if(cnt > 0) {
			isExist = true;
		}
		return isExist;
	}

	@Override
	public FComVO getMemId(String memId) {
		return selectOne("freecom.getMemId",memId); 
	}

	@Override
	public FComVO getFreeCom(int fNo) {
		return selectOne("freecom.getFreeCom",fNo);
	}

	@Override
	public int updateFreeCom(FComVO fcv) {
		return update("freecom.updateFreeCom",fcv);
	}

	@Override
	public int deleteFreeCom(String memId) {
		return delete("freecom.deleteFreeCom", memId);
	}

	@Override
	public List<FComVO> selectAllFreeComVO() {
		List<FComVO> freecomList = selectList("freecom.searchFreeCom");
		return freecomList;
	}

	@Override
	public List<FComVO> searchFreeComVO(FComVO fcv) {
		List<FComVO> freecomList = selectList("freecom.searchFreeCom",fcv);
		return freecomList;
	}

	@Override
	public int deleteFreeCom(int fNo) {
		return delete("freecom.deleteFreeCom",fNo);
	}

	@Override
	public List<FComVO> getFreeComList(int fNo) {
		return selectList("freecom.getFreeComList",fNo);
	}

	
	}

