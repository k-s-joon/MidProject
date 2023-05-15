<%@page import="free.vo.FreeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String memId = (String) session.getAttribute("loginCode");
	String reportId = (String) request.getAttribute("reportId");
	String memNick = request.getParameter("memNick");
	String seNick = (String)session.getAttribute("memNick");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
table{
   width: 100%;
   height: 100%;
}
td {
	height:60px;
}
input{
	height: 30px;
	border-radius: 8px;
	border-color: gray;
}
input:focus{
	 outline: none !important; border-color: rgb(149, 193, 247); box-shadow: 0 0 10px rgb(149, 193, 247);
}
textarea {
	width: 70%;
	height: 90px;
	border-radius: 8px;
}
textarea:focus{
	 outline: none !important; border-color: rgb(149, 193, 247); box-shadow: 0 0 10px rgb(149, 193, 247);
}
.bt_wrap{
	text-align: center;
	margin-top: 3%; 
}
.btn{
	width: 80px;
	height: 40px;
	background-color: lightslategray;
	color: whitesmoke;
    font-size: larger; 
}
.btn2 {
	border:0px;
	width: 75px;
	height: 40px;
	background-color: lightslategray;
	border-radius:8px;
	color: whitesmoke;
    font-size: larger; 
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신고하기</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<body>
	<form action="MemberReport" method="post">

		<div class="row">
		
			<table border="0" style="text-align: center;">
				<tr>
					<td><img alt="oath" src="./img/oath.png" width="100px" ></td>
				</tr>
				<tr>
					<td>
						<strong> 신고하기 </strong>
					</td>
				</tr>
				
				<!-- 						</div> -->
				<!-- 						<div class="info"> -->
				<tr>
					<td>
						<label>신고자ID >></label>
						<input type="text" name="goodMemId" value="<%=seNick%>" readonly />
					</td>
				</tr>

				<tr>
					<td>
						<label>신고하는사람ID >></label>
						<input type="text" name="badMemId" value="<%=memNick%>" readonly />
					</td>	
				</tr>
				<tr>
					<td>
						<!-- <input type="text" name="title" placeholder="제목 입력" style="width:70%;"> -->
						<select class="form-select form-select-sm mb-3" name="title" 
						aria-label=".form-select-lg example">
						<option value="스팸홍보/도배글입니다." selected>스팸홍보/도배글입니다.</option>
						<option value="음란물입니다.">음란물입니다.</option>
						<option value="불법정보를 포함하고 있습니다.">불법정보를 포함하고 있습니다.</option>
						<option value="청소년에게 유해한 내용입니다.">청소년에게 유해한 내용입니다.</option>
						<option value="욕설/생명경시/혐오/차별적 표현입니다.">욕설/생명경시/혐오/차별적 표현입니다.</option>
						<option value="개인정보 노출 게시물입니다.">개인정보 노출 게시물입니다.</option>
						<option value="불쾌한 표현이 있습니다.">불쾌한 표현이 있습니다.</option>
						<option value="불법촬영물 등이 포함되어 있습니다.">불법촬영물 등이 포함되어 있습니다.</option>
						<option value="기타">기타</option>
						</select>
					</td>
				</tr>
				<!-- 						</div> -->
				<tr class="cont">
					<td>
						<textarea name="content" placeholder="내용 입력"></textarea>
					</td>
				</tr>
			</table>
			<%-- <table border="1" style="text-align: center; border: solid #dddddd">
				<tr>
					<td><img alt="oath" src="../img/oath.png" width="100px"></td>
				</tr>
				<tr>
					<strong> 신1111고 </strong>
				</tr>
				<!-- 				<div class="board_write_wrap"> -->
				<!-- 					<div class="board_write"> -->
				<!-- 						<div class="title"> -->
				<tr>
					<label>제목</label>
					<input type="text" name="title" placeholder="제목 입력">
				</tr>
				<!-- 						</div> -->
				<!-- 						<div class="info"> -->
				<tr>
					<label>신고자ID</label>
					<input type="text" name="goodMemId" value="<%=memId%>" readonly />
				</tr>

				<tr>
					<label>신고하는사람ID</label>
					<input type="text" name="badMemId" value="<%=reportId%>" readonly />
				</tr>
				<!-- 						</div> -->
				<tr class="cont">
					<textarea name="content" placeholder="내용 입력"></textarea>
				</tr>
			</table> --%>
			<div class="bt_wrap">
				<input class="btn" type="submit" value="등록" width="200px" height="50px" background-color="blue">
				<button class="btn2" type="button" onclick="location.href='main.jsp' ">취소</button>
			</div>
			<!-- 		</div> -->
			<!-- 		</div> -->
	</form>
</body>
</html>