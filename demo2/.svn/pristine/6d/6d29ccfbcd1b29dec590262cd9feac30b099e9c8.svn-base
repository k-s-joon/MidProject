package free.dao;

import java.util.List;
import java.util.Map;

import dao.MyBatisDao;
import free.vo.FreeVO;

public class FreeDaoImpl extends MyBatisDao implements IFreeDao{

	private static IFreeDao freedao;
	private FreeDaoImpl() {
		
	}
	public static IFreeDao getInstance() {
		if(freedao == null) {
			freedao = new FreeDaoImpl();
		}
		return freedao;
	}
	@Override
	public int insertFree(FreeVO fv) {
		return insert("free.insertFree",fv);
	}
	@Override
	public boolean checkFree(String memId) {

		boolean isExist = false;
		
		int cnt = selectOne("free.checkFree",memId);

		if(cnt > 0) {
			isExist = true;
		}
		return isExist;
	}
	@Override
	public int updateFree(FreeVO fv) {
		return update("free.updateFree",fv);
	}
	@Override
	public int deleteFree(String memId) {
		return delete("free.deleteFree",memId);
	}
	@Override
	public List<FreeVO> selectAllFree() {
		List<FreeVO> freeList = selectList("free.selectAllFree");
		return freeList;
	}
	@Override
	public List<FreeVO> searchFreeVO(FreeVO fv) {
		List<FreeVO> freeList = selectList("free.searchFree",fv);
		return freeList;
	}
	@Override
	public FreeVO getFree(int fNo) {
		return selectOne("free.getFree",fNo);
	
	}
	@Override
	public int deleteFree(int fNo) {
		return delete("free.deleteFree", fNo);
	}
	
	// JS 수정
	 @Override
	 public List<FreeVO> getMemId(String memId) {
		return selectList("free.getMemId",memId);
	 }
	@Override
	public int countFree() {
		return selectOne("free.countfree");
	}
	@Override
	public List<FreeVO> freeList(Map<String, Object> map) {
		return selectList("free.countList", map);
	}
}
