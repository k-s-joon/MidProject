package report.service;

import java.util.List;

import report.dao.IReportDao;
import report.dao.ReportDaoImpl;
import report.vo.ReportVO;

public class ReportServiceImpl implements IReportService {

	private static IReportService service;
	 
	private IReportDao reportDao;
	public ReportServiceImpl() {
		 reportDao = ReportDaoImpl.getInstance();
	}
	public static IReportService getInstance() {
		if(service == null) {
			service = new ReportServiceImpl();
		}
		return service;
	}
	
	
	@Override
	public int insertReport(ReportVO rv) {
		// TODO Auto-generated method stub
		return reportDao.insertReport(rv);
	}
	@Override
	public List<ReportVO> selectAllReprot() {
		
		return reportDao.selectAllReprot();
	}
	@Override
	public ReportVO getReport(int reportNo) {
		return reportDao.getReport(reportNo);
	}

}
