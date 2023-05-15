<%@page import="ask.vo.AskVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	AskVO av =(AskVO) request.getAttribute("av");
	String memId = (String) session.getAttribute("memId");
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
<style>
button, input {
	background: white;
	display: inline-block;
	min-width: 80px;
	margin-left: 10px;
	padding: 10px;
	border: 1px solid #000;
	border-radius: 2px;
	font-size: 1.4rem;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의사항 수정</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<body>
<form action="./update.do" method="post">
<input type="hidden" name="askNo" value="<%=av.getAskNo()%>" />

    <div class="board_wrap">
        <div class="board_title">
            <strong>문의사항</strong>
            <p>문의사항 글 수정하기</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="askTitle" value="<%=av.getAskTitle() %>"></dd>
                    </dl>
                </div>
               
                <div class="cont" >
                    <textarea name="askCon" placeholder="내용 입력">
                    <%=av.getAskCon()%>
               </textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <input type="submit" value="수정">
                <a href="./list.do">취소</a>
            </div>
        </div>
    </div>
 </form>
</body>
</html>