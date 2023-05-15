<%@page import="message.vo.MessageVO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   List<MessageVO> msgList = 
   (List<MessageVO>) request.getAttribute("msgList");

    String loginCode = session.getAttribute("loginCode") == null ?
           "" : (String)session.getAttribute("loginCode");
//    session.removeAttribute("msg");
    String memNick = session.getAttribute("memNick") == null ?
           "" : (String)session.getAttribute("memNick");
  	String receiverId = request.getParameter("memId");  
    String receiverNick = request.getParameter("receiverNick");
//    session.removeAttribute("msg");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지보내기</title>
<style>
table{
   width: 100%;
   height: 100%;
}

input{
   border-color: lightgray;
   border-radius:8px;
   font-size: 15px;
}
input:focus{
   outline: none !important; border-color: rgb(149, 193, 247); box-shadow: 0 0 10px rgb(149, 193, 247); 
   border-radius:8px;
   font-size: 20px;
}
textarea:focus{
   outline: none !important; border-color: rgb(149, 193, 247); box-shadow: 0 0 10px rgb(149, 193, 247); 
   border-radius:8px;
   font-size: 20px;
}


textarea{
   border-radius:8px;
   font-size: 15px;
}
button {
   border-radius:8px;
   font-size: 20px;
}
 img {
 	margin: auto;
    display: block;
 }

</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="../css/sidemain.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>보낸 쪽지함</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<body>

   <div class="container">
      <div class="row">
      <form method="post" action="./write.do">
         <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            <thead>
               <tr>
            <td><img alt="message" src="../img/message.png" width="100px" ></td>
            </tr>
            <tr>
                  <th colspan="2" style="backgrond-color: #eeeeee; text-align: center; line-height:2; font-size:20px">쪽지보내기</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td style="line-height: 4;"> FROM [<%=memNick %>]</td>
               </tr>
               <tr>
<%--                   <td>수신자: <%=receiverNick %></td> --%>
                   <td>&nbsp&nbsp&nbsp&nbsp&nbsp TO.&nbsp<input type="text" class="form-control" value="<%=receiverNick %>" name="receiverNick" required style="width:80%; height:40px border:none; border-right:0px; border-top:0px;border-left:0px;border-bottom:0px;" readonly="readonly"></td> 
                  <%-- <td><input type="text" class="form-control" value="<%=request.getParameter("receiverNick") %>" name="receiverNick" required style="width:80%; height:40px"></td> --%>
               </tr>
               <tr>
                  <td>
                  <textarea class="form-control" placeholder="쪽지내용" name="msgCon" maxlength="1024" style="width: 80%; height: 80px; margin-top: 20px; margin-bottom:20px;" required></textarea>
                  </td>
               </tr>
               <tr>
               <td>
               <input type="hidden" value="<%=receiverId%>" name="receiverId" >
               </td>
               </tr>
            </tbody>
         </table>
         <div style=" text-align: center; margin-top:20px;" id="holder">
         <button class="btn" value="쪽지작성하기" onclick="return confirm('쪽지를 보낼까요??')" style=" display: inline-block; width:40%; height:40px; background-color: lightsteelblue; border: 0px">전송하기</button>
         </div>
      </form>
      </div>
   </div>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bototstrap.js"></script>

   
   </div>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bototstrap.js"></script>

   
</body>
</html>