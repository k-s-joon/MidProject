<%@page import="free.vo.FreeVO"%>
<%@page import="notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	FreeVO fv =(FreeVO) request.getAttribute("fv");
	String memId = (String) session.getAttribute("memId");
	String memNick = (String) session.getAttribute("memNick");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="/sidemain.jsp"></jsp:include>
  <jsp:include page="/view/topbar.jsp"></jsp:include>
  <link rel="stylesheet" href="../css/sidemain.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/topbar.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자유게시판 수정하기</title>
<link rel="stylesheet" href="../css/css.css">
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
</head>

<body>

<!-- <form action="./update.do" method="post" enctype="multipart/form-data"> -->
<form action="./update.do" method="post">
<input type="hidden" name="fNo" value="<%=fv.getfNo()%>" />

    <div class="board_wrap">
        <div class="board_title">
            <strong>자유게시판</strong>
            <p>자유게시판 변경</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="fTitle" value="<%=fv.getfTitle() %>"></dd>
                    </dl>
                </div>
                
                
                <div class="cont" >
                    <textarea name="fCon" placeholder="내용 입력">
                    <%=fv.getfCon() %>
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