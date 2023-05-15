<%@page import="notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.pager{
  float: left;
}
#pagelist{
  display: flex;
  justify-content: center;
}
</style>
</head>
<body>
   <div class="col-sm-8 text-left">
      <!--글쓰기 버튼 영역 -->
      <div>글쓰기 버튼 영역</div>
      
      <!--리스트 출력 영역 -->
      <div>
      <%
         List<NoticeVO> list = (List<NoticeVO>)request.getAttribute("list");
         if(list !=null){
            //목록정보 있을 때 화면분기처리
            for(int i=0; i<list.size(); i++){
      %>
            <!--       bootstrap accordion 코드 복사해옴  -->
            <div class="panel-group" id="accordion">
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse<%=i%>"><%=list.get(i).getNoticeTitle() %></a>
                     </h4>
                  </div>
                  <div id="collapse<%=i%>" class="panel-collapse collapse">      
<!--                   class="panel-collapse collapse in" in을 넣어주고 빼주고에 따라서 제목 내용의 디폴트값이 바뀐다 -->
                     <div class="panel-body"><%=list.get(i).getNoticeCon() %></div>
                  </div>
               </div>
            </div>
   <!--       bootstrap accordion 코드 복사해옴  -->
   <%
            } //for end
   %>         
            <!--페이지 영역 -->
            <div id="pagelist">
                  
               <ul class="pager">
                  <li class = "prev"><a href="#">Prev</a></li>
               </ul>
               
      		<!--pagination -->
               <ul class="pagination pager">
               <%
               	int sPage = (int)request.getAttribute("sPage");
               	int ePage = (int)request.getAttribute("ePage");
               	int cPage = (int)request.getAttribute("cPage");
               	for(int i = sPage; i <= ePage; i++) {
              		// 선택된 페이지 번호 활성화하기
              		if(i == cPage) {
              			
        
               %>
               	<li class="active"><a href="#"><%=i%></a></li>
               <%		
               	} else {
               %>
               	<li><a href="#"><%=i%></a></li>	
               <%
               		}
               	}
               	%>
               </ul>
            
               <ul class="pager">
                  <li class = "next"><a href="#">Next</a></li>
               </ul>
            </div>
            <!--페이지 영역 -->           
         <%   
         }else{
            // 목록정보 없을 때 
   		 %>
            <!--       bootstrap accordion 코드 복사해옴  -->
            <div class="panel-group" id="accordion">
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse1">정보없음</a>
                     </h4>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse in">      
                     <div class="panel-body">냉무</div>
                  </div>
               </div>
            </div>
   <!--       bootstrap accordion 코드 복사해옴  -->
   <%
         }
   %>

      
    
   </div>
   </div>
   
   
<script>
//페이지 번호 클릭 이벤트>> 다음으로 넘어가는 
$('.pagination li').on('click',function(){
//    alert($(this).text());
   location.href = "/demo2/Notice?page=" +$(this).text(); 
});

// 이전 / 다음 버튼 클릭 이벤트
$('.next').on('click',function(){
	// 현재 페이지 == 전체 페이지 수 비교하고 같지 않을 때
	// 같지 않을 때 +1 한 현재페이지 정보를 Main(페이지 처리) 서블릿으로 전달
	
	
	if(<%=request.getAttribute("cPage")%> == <%=request.getAttribute("ttPage")%>) {
		currentPage = <%=request.getAttribute("cPage")%>;
	} else {
		// currentPage + 1 ~~> 서블릿으로 전달하기
		currentPage = <%=request.getAttribute("cPage")%> +1;
	}
	location.href = "/demo2/Notice?page=" + currentPage;
});

$('.prev').on('click',function(){
	if(<%=request.getAttribute("cPage")%> == <%=request.getAttribute("ttPage")%>) {
		currentPage = <%=request.getAttribute("cPage")%>;
	} else {
		// currentPage + 1 ~~> 서블릿으로 전달하기
		currentPage = <%=request.getAttribute("cPage")%> -1;
	}
	location.href = "/demo2/Notice?page=" + currentPage;
});
</script>
 
</body>
</html>


