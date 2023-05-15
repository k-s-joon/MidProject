package report.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import report.service.IReportService;
import report.service.ReportServiceImpl;
import report.vo.ReportVO;

@WebServlet("/MemberReport")
public class MemberReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MemberReport() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String reportId = (String) request.getParameter("reportId");
		request.setAttribute("reportId", reportId );
		request.getRequestDispatcher("report/report.jsp").forward(request, response);
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String badMemId = request.getParameter("badMemId");
		String goodMemId = request.getParameter("goodMemId");
		String title = request.getParameter("title");
		String content  = request.getParameter("content");
	
		IReportService reportService = ReportServiceImpl.getInstance();
		
		ReportVO rv = new ReportVO();
		rv.setBadMemId(badMemId);
		rv.setGoodMemId(goodMemId);
		rv.setReportCon(content);
		rv.setReportTitle(title);
		
		
		int cnt = reportService.insertReport(rv);
		
		
		
//		request.getRequestDispatcher("main.jsp").forward(request, response);
	}

}
