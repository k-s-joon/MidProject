package ask.dao;

import java.util.List;

import dao.MyBatisDao;
import ask.vo.AComVO;

public class AskComDaoImpl extends MyBatisDao implements IAskComDao {

	private static IAskComDao askcomdao;
	private AskComDaoImpl() {
	}
	
	public static IAskComDao getinstance() {
		if(askcomdao == null) {
			askcomdao = new AskComDaoImpl();
		}
		return askcomdao;
	}
	
	@Override
	public int insertAskCom(AComVO acv) {
		return insert("askcom.insertAskCom", acv);
	
	}

	@Override
	public boolean checkAskCom(String memId) {
		boolean isExist = false;
		int cnt = selectOne("askcom.checkAskCom",memId);
		if(cnt > 0) {
			isExist = true;
		}
		return isExist;
	}

	@Override
	public AComVO getMemId(String memId) {
		return selectOne("askcomMap.getMemId",memId); 
	}

	@Override
	public AComVO getAskCom(int askNo) {
		return selectOne("askcomMap.getAskCom",askNo);
	}

	@Override
	public int updateAskCom(AComVO acv) {
		return update("askcomMap.updateAskCom",acv);
	}

	@Override
	public int deleteAskCom(String memId) {
		return delete("askcom.deleteAskCom", memId);
	}

	@Override
	public List<AComVO> selectAllAskComVO() {
		List<AComVO> askcomList = selectList("askcom.searchAskCom");
		return askcomList;
	}

	@Override
	public List<AComVO> searchAskComVO(AComVO acv) {
		List<AComVO> askcomList = selectList("askcom.searchAskCom",acv);
		return askcomList;
	}

	@Override
	public int deleteAskCom(int askNo) {
		return delete("askcom.deleteAskCom",askNo);
	}

	@Override
	public List<AComVO> getAskcomList(int askNo) {
		return selectList("askcom.getAskComList",askNo);
	}

	
	}

