package report.service;

import java.util.List;

import report.vo.ReportVO;

public interface IReportService {
	
	//신고 작성
	public int insertReport(ReportVO rv); 
	
	public List<ReportVO> selectAllReprot();
	
	public ReportVO getReport(int reportNo);
	
	
}
