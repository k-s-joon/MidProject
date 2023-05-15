package ask.service;

import java.util.List;

import ask.dao.AskComDaoImpl;
import ask.dao.IAskComDao;
import ask.vo.AComVO;

public class AskComServiceImpl implements IAskComService {

	private IAskComDao acdao;
	private static IAskComService acservice;
	
	private  AskComServiceImpl() {
		acdao = AskComDaoImpl.getinstance();
	}
	
	public static IAskComService getinstance() {
		if(acservice == null) {
			acservice = new AskComServiceImpl();
		}
		return acservice;
	}
	
	
	@Override
	public int registAskCom(AComVO acv) {
		return acdao.insertAskCom(acv);
	}

	@Override
	public boolean checkAskCom(String memId) {
		return acdao.checkAskCom(memId);
	}

	@Override
	public AComVO getMemId(String memId) {
		return acdao.getMemId(memId);
	}

	@Override
	public AComVO getAskCom(int fNo) {
		return acdao.getAskCom(fNo);
	}

	@Override
	public int modifyAskCom(AComVO acv) {
		return acdao.updateAskCom(acv);
	}

	@Override
	public int removeAskCom(String memId) {
		return acdao.deleteAskCom(memId);
	}

	@Override
	public List<AComVO> listAllAskCom() {
		return acdao.selectAllAskComVO();
	}

	@Override
	public List<AComVO> searchAskCom(AComVO acv) {
		return acdao.searchAskComVO(acv);
	}

	@Override
	public int removeAskCom(int askNo) {
		return acdao.deleteAskCom(askNo);
	}

	@Override
	public List<AComVO> getAskcomList(int askNo) {
		return acdao.getAskcomList(askNo);
	}

}
