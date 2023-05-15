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

@WebServlet("/reportsearch")
public class searchReport extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int reportNo = Integer.parseInt(req.getParameter("reportNo"));
		
		IReportService reportService = ReportServiceImpl.getInstance();
		
		ReportVO rv = reportService.getReport(reportNo);
		req.setAttribute("rv", rv);
		
		req.getRequestDispatcher("/manager/reportModal.jsp").forward(req, resp);
	}
}
