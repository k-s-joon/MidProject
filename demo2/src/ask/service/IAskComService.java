package ask.service;

import java.util.List;

import ask.vo.AComVO;

public interface IAskComService {

	public int registAskCom(AComVO acv);
	
	public boolean checkAskCom(String memId);
	
	public AComVO getMemId(String memId);
	
	public AComVO getAskCom(int askNo);
	
	public int modifyAskCom(AComVO acv);
	
	public int removeAskCom(String memId);
	
	
	public List<AComVO> listAllAskCom();
	
	public List<AComVO> searchAskCom(AComVO acv);

	public List<AComVO> getAskcomList(int askNo);
	
	public int removeAskCom(int aNo);
}
