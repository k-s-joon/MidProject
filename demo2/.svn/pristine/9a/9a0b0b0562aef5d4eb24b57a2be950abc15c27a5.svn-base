<%@page import="notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	
	NoticeVO nv = (NoticeVO) request.getAttribute("nv");
	String memId = (String) session.getAttribute("loginCode");
	String memNick = (String) session.getAttribute("memNick");	
	int memP = (int) session.getAttribute("memP");	
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
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
    <form action="./insert.do" method="post">
 	<input type="hidden" name="memId" value="<%=memId%>">
	
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지글 올리기</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="noticeTitle" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>닉네임</dt>
                        <dd><input type="text" name="noticeNick" value="<%=memNick%>" readonly/></dd>
                    </dl>
                </div>     
           
                <div class="cont">
                    <textarea name ="noticeCon" placeholder="내용 입력"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
	 	  	<input type="submit" value="등록"> 
            <button type="button" onclick="location.href='./list.do' ">취소</button>
            </div>
        </div>
    </div>
    </form>
</body>
</html>