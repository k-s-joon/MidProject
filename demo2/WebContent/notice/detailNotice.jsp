<%@page import="notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	NoticeVO nv = (NoticeVO) request.getAttribute("nv");
	String memId = (String) session.getAttribute("loginCode");
	String memNick = (String) session.getAttribute("memNick");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>문의사항</title>
<jsp:include page="/sidemain.jsp"></jsp:include>
<jsp:include page="/view/topbar.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="../css/sidemain.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/topbar.css">
<link rel="stylesheet" href="../css/css.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의게시판</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<form action="./update.do" method="post" enctype="multipart/form-data" style="margin-top: -7%; margin-left: -5%">

		<div class="board_wrap">
			<div class="board_title">
				<strong>공지사항</strong>
				<p>공지 글 올리기</p>
			</div>
			<div class="board_view_wrap">
				<div class="board_view">
					<div class="title">
						<dd><%=nv.getNoticeTitle()%></dd>
					</div>
					<div class="info">
						<dl>
							<dt>글 번호</dt>
							<dd><%=nv.getNoticeNo()%></dd>
						</dl>
						<dl>
							<dt>작성일</dt>
							<dd><%=nv.getNoticeDate()%></dd>
						</dl>
					</div>
					<div class="cont">
						<dd><%=nv.getNoticeCon()%></dd>
					</div>
				</div>

				<div class="bt_wrap">
					<a href="./list.do">목록</a>
					<%
						if (memId.equals(nv.getMemId())) {
					%>
					<a href="./update.do?noticeNo=<%=nv.getNoticeNo()%>">수정</a> <a
						href="./delete.do?noticeNo=<%=nv.getNoticeNo()%>"
						onclick="return confirm('삭제하시겠습니까?')">삭제</a>
					<%
						} else {

					}
					%>
				</div>
			</div>
		</div>
	</form>
</body>
</html>