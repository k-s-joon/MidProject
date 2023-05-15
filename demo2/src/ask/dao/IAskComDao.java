package ask.dao;

import java.util.List;

import ask.vo.AComVO;

public interface IAskComDao {
	public int insertAskCom(AComVO acv);
	public boolean checkAskCom(String memId);
	public AComVO getMemId(String memId);
	public AComVO getAskCom(int askNo);
	public int updateAskCom(AComVO acv);
	public int deleteAskCom(String memId);
	public List<AComVO> selectAllAskComVO();
	public List<AComVO> searchAskComVO(AComVO acv);
	public int deleteAskCom(int askNo);
	public List<AComVO> getAskcomList(int askNo);
}
