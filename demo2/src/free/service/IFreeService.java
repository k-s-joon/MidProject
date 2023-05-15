
package free.service;

import java.util.List;
import java.util.Map;

import free.vo.FreeVO;

public interface IFreeService {
	public int registFree(FreeVO fv);
	
	public boolean checkFree(String memId);
	
	public FreeVO getFree(int fNo);
	
	public int modifyFree(FreeVO fv);
	
	public int removeFree(String memId);
	
	public List<FreeVO> listAllFree();
	
	public List<FreeVO> searchFree(FreeVO fv);

	public int removeFree(int fNo);

	
	
	// JS 수정	
	public List<FreeVO> getMemId(String memId);
	
	// 추가
	public int countFree();
	public List<FreeVO> freeList(Map<String, Object> map);
}
