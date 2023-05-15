<%@page import="message.vo.ChatVO"%>
<%@page import="message.vo.MessageVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	
    List<ChatVO> chatList = (List<ChatVO>) request.getAttribute("cv");
    MessageVO mv = (MessageVO) request.getAttribute("mv");
    String memId = (String) session.getAttribute("loginCode");
    String memNick = (String) session.getAttribute("memNick");
    int memPs = (int) session.getAttribute("memP");
    String memP = Integer.toString(memPs);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<script>

	function autoRefresh_div()
	{
	var currentLocation = window.location;
	$("#myid").load(currentLocation + ' #myid');
	}
	setInterval('autoRefresh_div()', 1000);
	
	function myfunction(){
		var msgNo = $('#insertFrm').find('.info').find('input[name=msgNo]').val();
	      var fromNick = $('#insertFrm').find('.info').find('input[name=fromNick]').val();
	      var fromId = $('#insertFrm').find('.info').find('input[name=fromId]').val();
	      var chatContent =$('[name=chatContent]').val();
	      
	      $.ajax({
	         url : "./insertchat",
	         type : 'post',
	         data : {
	             "msgNo" : msgNo,
	            "fromNick" : fromNick, 
	            "fromId" : fromId,
	            "chatContent" : chatContent
	         },
	         success : function(data) {
	            location.reload();
	           },
	         error : function() {
	            alert("error");
	         }
	      });
	   }

$(document).ready(function () {
   $('#insertBtn').on('click',function () {
      var msgNo = $('#insertFrm').find('.info').find('input[name=msgNo]').val();
      var fromNick = $('#insertFrm').find('.info').find('input[name=fromNick]').val();
      var fromId = $('#insertFrm').find('.info').find('input[name=fromId]').val();
      var chatContent =$('[name=chatContent]').val();
      
      $.ajax({
         url : "./insertchat",
         type : 'post',
         data : {
             "msgNo" : msgNo,
            "fromNick" : fromNick, 
            "fromId" : fromId,
            "chatContent" : chatContent
         },
         success : function(data) {
            location.reload();
           },
         error : function() {
            alert("error");
         }
      });
   });
   
});

</script>


<div class="container bootstrap snippet">
	<div class="row">
		<div class="col-xs-12">
			<div class="portlet-heading">
				<div class="portlet-title">
					<h4><i class="fa fa-circle text-green"></i><%=mv.getMemNick()%> 와 <%=mv.getReceiverNick()%>의 채팅</h4>
				</div>
				<div class="clearfix"></div>

<form id="insertFrm" name="insertFrm">
		<div id="myid">
		<%
            int chatSize = chatList.size();
            if(chatSize > 0){
               for(int i=0; i<chatSize; i++){
            %>
		<div class="replylist">
		<%if(mv.getMemId().equals(chatList.get(i).getFromId())) { %>
			<div style="text-align: right"><%=chatList.get(i).getChatContent()%></div>
			<%} else{ %>
			<div><%=chatList.get(i).getChatContent()%></div>
			<%} %>
		</div>
		<%
            }
            }
           %>
		</div>
		<div class="info">
			<dl>
				<dt></dt>
				<dd>
					<input type="hidden" name="fromNick" value="<%=mv.getMemNick()%>"
						readonly />
				</dd>
			</dl>
			<dl>
				<dt></dt>
				<dd>
					<input type="hidden" name="fromId" value="<%=mv.getMemId()%>" readonly />
				</dd>
			</dl>
			<dl>
				<dt></dt>
				<dd>
					<input type="hidden" name="msgNo" value="<%=mv.getMsgNo()%>" readonly />
				</dd>
			</dl>
		</div>
		<div id="chat" class="panel-collapse collapse in">
				<div id="chatList" class="porlet-body chat-widget" style="overflow-y: auto; width: auto; height: 10px; ">
				</div>
				<div class="portlet-footer">
					<div class="row" style="height: 90px;">
						<div class="form-group col-xs-10">
			<textarea onkeyup="if(window.event.keyCode==13){myfunction()}" name="chatContent" style="height: 80px;" id="chatContent" class="form-control" placeholder="내용 입력"></textarea>
		</div>
					<div class="form-group col-xs-2">
					<button type="button" class="btn btn-default pull-right" id="insertBtn">댓글 작성 완료</button>
					</div>
					</div>
				</div>
			</div>
	</form>

			</div>
		</div>
	</div>
</div>
</body>
</html>