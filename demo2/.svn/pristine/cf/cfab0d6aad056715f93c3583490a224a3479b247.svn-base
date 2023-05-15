<%@page import="member.vo.FileVO"%>
<%@page import="member.service.FileServiceImpl"%>
<%@page import="member.service.IFileService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="member.service.MemberServiceImpl"%>
<%@page import="member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.vo.MemberVO"%>    
<%
   MemberVO vo = (MemberVO) request.getAttribute("vo");
IMemberService memservice = MemberServiceImpl.getInstance();
IFileService fileservice = FileServiceImpl.getInstance();

List<FileVO> fileList = fileservice.getFileList(vo.getMemId());

%>

<div class="slider">
  <span id="slide-1"></span>
  <span id="slide-2"></span>
  <span id="slide-3"></span>
  <div class="image-container" >
	<%  
	if(fileList.size()>=1){ %>
    <img src="<%=request.getContextPath()%>/download.do?fileSn=<%=fileList.get(0).getFileSn()%>&fileNo=<%=fileList.get(0).getFileNo()%>" style="margin-right:10px; width:500px;" height="500px; "    />  
	<%
	}else {
		%>
		<img src="./img/기본프로필.png" style="width: 500px" height="500px">
		<%
	}
	%><%
	if(fileList.size()>=2){ %>
    <img src="<%=request.getContextPath()%>/download.do?fileSn=<%=fileList.get(1).getFileSn()%>&fileNo=<%=fileList.get(1).getFileNo()%>" style="margin-right:10px; width:500px;" height="500px; "    />  
	<%
	}else {
		%>
		<img src="./img/기본프로필.png" style="width: 500px" height="500px">
		<%
	}
	%><%
	if(fileList.size()>=3){ %>
    <img src="<%=request.getContextPath()%>/download.do?fileSn=<%=fileList.get(2).getFileSn()%>&fileNo=<%=fileList.get(2).getFileNo()%>" style="margin-right:10px; width:500px;" height="500px; "    />  
	<%
	}else {
		%>
		<img src="./img/기본프로필.png" style="width: 500px" height="500px">
		<%
	}
	%>
	
    
	
    
  </div>
  <div class="buttons">
    <a href="#slide-1"></a>
    <a href="#slide-2"></a>
    <a href="#slide-3"></a>
  </div>
</div>
          
<div>
	<h2>이름 : <%=vo.getMemName()%></h2>
	<h2>닉네임 : <%=vo.getMemNick()%></h2>
	<h2>MBTI : <%=vo.getMemMbti()%></h2>
	<h2>키 : <%=vo.getMemKey()%></h2>
	<h2>생일 : <%=vo.getMemBir().substring(0, 10)%></h2>
	<h2>취미 : <%=vo.getMemHobby()%></h2>
	<h2>종교 : <%=vo.getMemReligion()%></h2>
	<h2>음주 : <%=vo.getMemDrink()%></h2>
</div>


