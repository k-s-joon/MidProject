<%@page import="member.vo.FileVO"%>
<%@page import="member.service.FileServiceImpl"%>
<%@page import="member.service.IFileService"%>
<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style>
#image_container img {
	width: 200px;
	height: 200px;
}

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
	<form action="MypageInsert" method="post" enctype="multipart/form-data"
		style="width: 60%; padding-top: 45%;">
		<table style="width: 100%;">
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">MBTI</label>
					<select class="form-select form-select-sm mb-3" name="memMbti"
					aria-label=".form-select-lg example">
						<option value="ISFP" selected>ISFP</option>
						<option value="ISTP">ISTP</option>
						<option value="ISFJ">ISFJ</option>
						<option value="ISTJ">ISTJ</option>
						<option value="INFJ">INFJ</option>
						<option value="INFP">INFP</option>
						<option value="ISTJ">ISTJ</option>
						<option value="ISTP">ISTP</option>
						<option value="ESFP">ESFP</option>
						<option value="ESTP">ESTP</option>
						<option value="ESFJ">ESFJ</option>
						<option value="ESTJ">ESTJ</option>
						<option value="ENFJ">ENFJ</option>
						<option value="ENFP">ENFP</option>
						<option value="ESTJ">ESTJ</option>
						<option value="ESTP">ESTP</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">취미</label>
					<select class="form-select form-select-sm mb-3" name="memHobby"
					aria-label=".form-select-lg example">
						<option value="null" selected>없음</option>
						<option value="스포츠">스포츠</option>
						<option value="독서">독서</option>
						<option value="음악">음악</option>
						<option value="요리">요리</option>
						<option value="헬스">헬스</option>
						<option value="영화">영화</option>
						<option value="쇼핑">쇼핑</option>
						<option value="애니메이션">애니메이션</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">종교</label>
					<select class="form-select form-select-sm mb-3" name="memReligion"
					aria-label=".form-select-lg example">
						<option value="null" selected>없음</option>
						<option value="불교">불교</option>
						<option value="기독교">기독교</option>
						<option value="힌두교">힌두교</option>
						<option value="이슬람">이슬람</option>
						<option value="유교">유교</option>
						<option value="무교">무교</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">흡연</label>
					<select class="form-select form-select-sm mb-3" name="memSmoking"
					aria-label=".form-select-lg example">
						<option value="흡연자" selected>흡연자</option>
						<option value="비흡연자">비흡연자</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">음주</label>
					<select class="form-select form-select-sm mb-3" name="memDrink"
					aria-label=".form-select-lg example">
						<option value="음주" selected>음주</option>
						<option value="비음주">비음주</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="exampleFormControlInput1" class="form-label">키</label>
					<input class="form-control" type="text" value="" name="memKey"
					aria-label="default input example"></td>
			</tr>
			<tr>
				<td><label for="formFileMultiple" class="form-label">사진
						등록</label> <input class="form-control" type="file" name="file"
					id="formFileMultiple" onchange="setThumbnail(event);" multiple>

					<div id="image_container"></div></td>
			</tr>



			<tr>
				<td>
					<button class="btn btn-primary">등록완료</button>

				</td>
			</tr>




		</table>
	</form>


	<script>
 function setThumbnail(event) {
	 document.querySelector("div#image_container").innerHTML="";
	    for (var image of event.target.files) {
	      var reader = new FileReader();
	      reader.onload = function(event) {
	        var img = document.createElement("img");
	        
	        img.setAttribute("src", event.target.result);
	        document.querySelector("div#image_container").appendChild(img);
	      };

	      console.log(image);
	      reader.readAsDataURL(image);
	    }
	  }
 
 

 </script>
</body>
</html>