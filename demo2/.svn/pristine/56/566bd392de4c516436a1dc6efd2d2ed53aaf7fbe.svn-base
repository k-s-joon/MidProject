<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String uNick = request.getParameter("uNick");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
	Connection conn = DriverManager.getConnection(url,"team2_202210M","java");
	Statement stmt = conn.createStatement();
	String sql = "select mem_nick from member "
			+ "where mem_nick = '" + uNick + "'";
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){
%>
		{
			"rst" : "fail",
			 "msg": "사용불가"
		}
		
<%	
	}else{
%>
		{
			"rst" : "ok",
		 	"msg": "사용가능"
		}
<%
	}
%>