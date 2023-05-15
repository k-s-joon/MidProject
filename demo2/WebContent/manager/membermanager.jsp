<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<MemberVO> memList = (List<MemberVO>) request.getAttribute("memList");
MemberVO mv = (MemberVO) request.getAttribute("mv");
%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="/view/topbar.jsp"></jsp:include>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/topbar.css">

<style>
table {
	font-size: 20px;
    border: 2px solid gray;
    width: 70%;
    margin-top: 3%;
    margin-left: 15%;
}

table th, table td {
	text-align: center;
	font-size: 20px;
	border: 2px solid gray;
}
.count{
	background:#f2f2f25e;
	width: 10%;
}
.id {
	background:#f2f2f25e;
	width: 25%;
}
.nick{
	background:#f2f2f25e;
	width: 25%;
}
.status{
	background:#f2f2f25e;
	width: 20%;
}
.choose{
	background:#f2f2f25e;
	width: 20%;
}
.title {
margin-top:10%;
text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.uptBtn').on('click', function() {
			updateUser(this);
		});
	});

	function updateUser(obj) {

		var memId = $(obj).closest('tr').find('input[name=memId]').val();
		var memP = $(obj).closest('tr').find('select[name=memP]').val();

		$.ajax({
			url : "/demo2/updatemanager",
			type : 'post',
			data : {
				"memId" : memId,
				"memP" : memP
			},
			success : function(data) {
				alert("success");
			},
			error : function() {
			}
		});
	}
</script>
</head>
<body>
	<div class= "title">
	<h1>전체 회원 상태</h1>
	<strong>회원 상태를 변경하시오.</strong>
	</div>
	<!-- 	<form action="updatemanager?memId=" method="post"> -->
	<form action="updatemanager" method="post" style="height: 80%;">
	
		<table>
			
			<tr class="top">
				<th class="count">순번</th>
				<th class="id">회원 아이디</th>
				<th class="nick">닉네임</th>
				<th class="status">회원 상태</th>
				<th class="choose">상태 선택</th>
			</tr>
			<%
					int memSize = memList.size();
				if (memSize > 0) {
					for (int i = 0; i < memSize; i++) {
						if (memList.get(i).getMemP() != 1) {
				%>
			<tr>	
				<td><%=i+1%></td>
				<td><input type="hidden" value="<%=memList.get(i).getMemId()%>"	name="memId"><%=memList.get(i).getMemId()%></td>
				<td><%=memList.get(i).getMemNick()%></td>
				<td><select name="memP">
						<option value="<%=memList.get(i).getMemP()%>" selected>
							<%
									if (memList.get(i).getMemP() == 0) {
								%> 일반회원
							<%
									} else if (memList.get(i).getMemP() == 2) {
								%> 블랙리스트
							<%
									}
								%>
						</option>
						<option value="0">일반회원</option>
						<option value="2">블랙리스트</option>
				</select></td>
				<td><button class="uptBtn" type="button">변경</button></td>
			</tr>
			<%
					}
				}
				}
				%>
		</table>
	</form>
	
		

</body>
</html>