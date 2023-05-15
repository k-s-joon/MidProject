<%@page import="notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	List<NoticeVO> noticeList = (List<NoticeVO>) request.getAttribute("noticeList");
	String memId = (String) session.getAttribute("loginCode");	
	String memNick = (String) session.getAttribute("memNick");
	int memP = (int) session.getAttribute("memP");	
	String msg = session.getAttribute("msg") == null ?
			 "" : (String)session.getAttribute("msg");
	session.removeAttribute("msg");

	int totalcount = noticeList.size();
	int countList = 5;

	int totalPage = totalcount / countList;

	if(totalcount > countList * totalPage){
		totalPage++;
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
table {
	border-collapse:collapse;
	border-left: 0px;
	border-right: 0px;
}
table th{
	background-color: #edecf58f;
	font-size:20px; 
/* 	width:40%;  */
	height:70px;
	border-right:0px;
	border-left:0px;
}
table td{
	font-size:15px; 
	height:65px; 
	border-top:0px;
	border-right:0px;
	border-left:0px;
}
.title {
	font-size:15px;
}

.pager {
  float: left;
}
#pagelist {
  display: flex;
  justify-content: center;
}


</style>
 <jsp:include page="/sidemain.jsp"></jsp:include>
 <jsp:include page="/view/topbar.jsp"></jsp:include>
 <link rel="stylesheet" href="../css/sidemain.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
 <link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
 <link rel="stylesheet" href="<%=request.getContextPath() %>/css/topbar.css">
 <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 
 <!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

 
 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항 게시판</title>
<link rel="stylesheet" href="../css/css.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<section style="width:60%; position: absolute;">

<!-- 	<div class="board_wrap"> -->
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 확인해주세요.</p>
			<div class="board_input">
				<select id=datas >
					<option value="v1">글제목</option>
					<option value="v2">닉네임</option>
				</select>
				<input type="text" id="myInput" class="searchinput" onkeyup="if(window.event.keyCode==13){(myFunction(this))}" placeholder="검색어 입력" 
				style="border-top-right-radius: 50px; border-bottom-right-radius: 50px; height:47px">
				</div>
		</div>
		
		
		<div class="board_list_wrap">
<!-- 			<div class="board_list"> -->
			<table id="myTable" border="1" margin="auto">
<!-- 			<thead> -->
				<tr class="top">
					<th>번호</th>
					<th class="title2">제목</th>
					<th class="writer">닉네임</th>
					<th>작성일</th>
				</tr>
			<%
			 	int noticeSize = noticeList.size();
				if(noticeSize > 0){
					for(int i=0; i<noticeSize; i++){
			%>
				<tr class="board_list">
				<tr style="text-align:center">
					<td class="num"><a href="./detail.do?noticeNo=<%=noticeList.get(i).getNoticeNo()%>"><%=noticeList.get(i).getNoticeNo() %></a></td>
					<td class="title2"><%=noticeList.get(i).getNoticeTitle()%></td>
					<td class=writer><%=noticeList.get(i).getNoticeNick() %></td>
					<td class="date"><fmt:formatDate value="<%=noticeList.get(i).getNoticeDate() %>" pattern="yyyy-MM-dd" type="date"/></td>
				</tr>
				<% } %>
				</table>
			<div id="pagelist">
					<ul class="pager">
					  <li class="prev"><a href="#">Prev</a></li>
					</ul>
					
					<!-- pagination -->
					<ul class="pagination pager">
					<%
						int sPage = (int)request.getAttribute("sPage");
						int ePage = (int)request.getAttribute("ePage");
						int cPage = (int)request.getAttribute("cPage");
						
						for(int i=sPage; i<=ePage; i++){
							//선택된 페이지 번호 활성화하기
							if(i == cPage){
						%>
							  <li class="active"><a href="#"><%=i %></a></li>
					<%
							}else{
					%>
							  <li><a href="#"><%=i%></a></li>
					<%
							}//if else end
						}//for end
					%>
					</ul>
					
					<ul class="pager">
					  <li class="next"><a href="#">Next</a></li>
					</ul>
				</div>
				<!-- 페이징 영역 -->
		<%	} %> 
			<div class="bt_wrap">
			<%
               if(memP==1){
            %>
              <a href="./insert.do" class="on">등록</a>
            <%   
               }else{
                  
               }
            %>
			
			</div>
		</div>
		<script>
//페이지 번호 클릭 이벤트
$('.pagination li').on('click',function(){
// 	alert( $(this).text() );
	location.href = "/demo2/notice/list.do?page=" + $(this).text();
});
	
//이전/다음 버튼 클릭 이벤트
let currentPage = "";
$('.next').on('click',function(){
	//현재 페이지 == 전체 페이지 수 비교하고, 
	// 같지 않을 때 +1 한 현재페이지 정보를 Main(페이지처리)서블릿으로 전달
	if(<%=request.getAttribute("cPage")%> == <%=request.getAttribute("ttPage")%>){
		currentPage = <%=request.getAttribute("cPage")%>;
	}else{
		//currentPage+1 ~~~> 서블릿으로 전달하기
		currentPage = <%=request.getAttribute("cPage")%> +1;
	}
	location.href="/demo2/notice/list.do?page=" + currentPage;
});

$('.prev').on('click',function(){
	//현재 페이지 == 1 과 비교하고, 
	// 같지 않을 때 -1 한 현재페이지 정보를 Main(페이지처리)서블릿으로 전달
	if(<%=request.getAttribute("cPage")%> == 1){
		currentPage = <%=request.getAttribute("cPage")%>;
	}else{
		//currentPage+1 ~~~> 서블릿으로 전달하기
		currentPage = <%=request.getAttribute("cPage")%> -1;
	}
	location.href="/demo2/notice/list.do?page=" + currentPage;
});

</script>
</section>	
</body>
</html>