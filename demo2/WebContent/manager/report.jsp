<%@page import="report.vo.ReportVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<ReportVO> reportList = (List<ReportVO>) request.getAttribute("reportList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<jsp:include page="/view/topbar.jsp"></jsp:include>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/topbar.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<style>
table {
	font-size: 20px;
    height: 65px;
    border: 2px solid;
    width: 80%;
    height: 15%;
    position: static;
}

th {
	background: #eee;
	font-size: 20px;
	border: 2px solid;
}

td {
	text-align: center;
	font-weight: bold;
	border: 2px solid;
}

.subjec {
	font-weight: bold;
}

.profile {
	position: relative;
    margin-top: 30%;
    background: #e8def7;
}

button {
	font-weight:bold;
	background: #eee;
	display: inline-block;
	min-width: 80px;
	margin-left: 10px;
	padding: 10px;
	border: 1px solid #f2f2f200;
	border-radius: 2px;
	font-size: 1.4rem;
}
</style>

</head>


<body>
	<script>
			function modelOpen(reportNo) {

				$.ajax({
					url : "/demo2/reportsearch",
					type : 'post',
					data : {
						"reportNo" : reportNo
					},
					success : function(data) {
						$('.profile').html(data);
					},
					error : function() {
						alert("error");
					}
				});
			}
		</script>
		<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
		<div style="width: 100%; margin-top: 320px; text-align: center; display:block;">
		<h1 >신고내역</h1>
		<br>
		<table style="margin-left: 200px;">
			
			<tr class="subject">
				
				<th>신고한사람</th>
				<th>신고당한사람</th>
				<th>신고사유 <br>'클릭'</th>
				<th>신고일</th>
			</tr>

			<%
				int reportSize = reportList.size();
			if (reportSize > 0) {
				for (int i = 0; i < reportSize; i++) {
			%>
			<tr>
				<td><%=reportList.get(i).getGoodMemId()%></td>
				<td><%=reportList.get(i).getBadMemId()%></td>
				<td>
				<a id="" href="/demo2/manager/reportModal.jsp?con=<%=reportList.get(i).getReportCon()%>" onClick="window.open(this.href, '', 'width=600, height=500, left=1200px, top=200px'); return false;"><%=reportList.get(i).getReportTitle()%></a>
				</td>
				<td><%=reportList.get(i).getReportDate()%></td>
			</tr>
			<%
				}
			}
			%>
		</table>
		</div>
		<div></div>
		<div class="profile" style="position: fixed; margin-top: 1000px;"></div>
</body>
</html>