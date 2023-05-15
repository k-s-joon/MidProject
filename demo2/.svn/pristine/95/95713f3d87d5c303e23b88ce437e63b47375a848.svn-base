<%@page import="member.service.MemberServiceImpl"%>
<%@page import="member.service.IMemberService"%>
<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   	<%
   		String pwPost = (String)request.getAttribute("pwPost");
   	System.out.print(pwPost);
   		if(pwPost.equals("yes")){
   	
   		IMemberService service = MemberServiceImpl.getInstance();
   		String memPw = (String)request.getAttribute("memPw");
   		String memId = (String)request.getAttribute("memId");
   		int cnt;
   		
   		String equalsCode1 = (String)request.getAttribute("equalsCode1");
   		String equalsCode2 = (String)request.getAttribute("equalsCode2");
   		
   		MemberVO mv = new MemberVO();
   		mv.setMemPw(memPw);
   		mv.setMemId(memId);
   		
   		if(equalsCode1.equals("yes")&&equalsCode2.equals("yes")){
   		cnt =service.updatePw(mv);
   			
   			if(cnt>0){
   			System.out.print("비밀번호 변경이완료되었습니다");
   			request.setAttribute("pwUpdateCode","yes");
   			request.getRequestDispatcher("mypage.jsp").forward(request, response);
   			
   			}else{
   				System.out.print("비밀번호 변경에 실패했습니다");
   				
   			}
   		}else if(equalsCode1.equals("no")){
   			System.out.print("현재비밀번호가 맞지않습니다");
   		}else if(equalsCode2.equals("no")){
   			System.out.print("변경할비밀번호가 동일하지않습니다");
   		}else {
   			System.out.print("현재비밀번호가 맞지않습니다");
   		}
   	
   		}
   	%>
    
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Our Team Section | CodingLab </title>---->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sidemain.css">
    <jsp:include page="/sidemain.jsp"></jsp:include>
    <jsp:include page="/topbar.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     
     <style>
    @font-face { /* 애플산돌고딕 폰트 적용 */
  font-family:"jua";
  src: url("css/fonts/BMJUA_ttf.ttf") format("truetype");
  font-weight: normal;
	} /* 이후 "SDGothic"으로 폰트 적용 가능 */
     
     *{
     font-family: jua;
     }
     
     </style>
     
     	
   </head>
<body>



	<form action="MypagePwUpdate" method="post"   style="width: 60%" >
   <table style="width: 100%">
   <tr>
   <td>
  <div class="mb-3">
  
  <label for="exampleFormControlInput1" class="form-label">현재패스워드</label>
  <input class="form-control" type="password" id="exampleFormControlInput1" placeholder="현재비밀번호" value="" name="memPw1">
</div>
	</td>
	</tr>
	
	<tr>
	<td>
	<label for="exampleFormControlInput1" class="form-label">변경할패스워드</label>
	<input class="form-control" type="password" placeholder="변경할패스워드" value="" name="memPw2" aria-label="default input example">
	
  </td>
</tr>
	<tr>
	<td>
	<label for="exampleFormControlInput1" class="form-label">변경할패스워드확인</label>
	<input class="form-control" type="password" placeholder="변경할패스워드를 다시입력하세요" value="" name="memPw3" aria-label="default input example">
	
  </td>
</tr>

<tr>
  <td style="padding-top: 50px;">
	<button class="btn btn-primary" >비밀번호변경하기</button>
          
  </td>
</tr>

	

 </table>
 </form>
 
</body>
</html>