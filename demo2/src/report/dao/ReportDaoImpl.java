package report.dao;

import java.util.List;

import dao.MyBatisDao;
import report.vo.ReportVO;

public class ReportDaoImpl extends MyBatisDao implements IReportDao  {
	private static IReportDao reportDao;
	
	private ReportDaoImpl () {
		
	}
	
	public static IReportDao getInstance() {
		if(reportDao == null) {
			reportDao = new ReportDaoImpl();
		}
		return reportDao;
	}
	
	
	@Override
	public int insertReport(ReportVO rv) {
		// TODO Auto-generated method stub
		return insert("report.insertReport",rv);
	}

	@Override
	public List<ReportVO> selectAllReprot() {
		List<ReportVO> reportList = selectList("report.selectAllReport");
		return reportList;
	}

	@Override
	public ReportVO getReport(int reportNo) {
		return selectOne("report.getReport",reportNo);
	}

}
