<%@page import="report.vo.ReportVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ReportVO rv = (ReportVO) request.getAttribute("rv");
	String con = (String) request.getParameter("con");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>

	<h2><%=con%></h2>
</div>
</body>
</html>