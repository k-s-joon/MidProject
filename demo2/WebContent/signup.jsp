<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup.css">
<meta charset="UTF-8">
<title>Document</title>
</head>

<body>
	<div class="form">
		<div class="tab-content">
			<div id="signup">
				<h1>
					<img alt="로고" src="img/logo.png" width="30%">
				</h1>

				<form action="memberinsert" method="post" enctype="multipart/form-data">

					<div class="top-row">
						<div class="field-wrap">
							<input type="text" id="id" name="memId" value="" placeholder="아이디 (3~15자리를 입력하세요.) " required
								autocomplete="off" pattern="[a-zA-Z][a-zA-Z0-9]{3,15}"
								style="border-radius: 10px" autofocus>
<!-- 							<button type="button" class="btn btn-success btn-sm" id="idChk">중복검사</button>  -->
								<span id="disp"></span>
							</div>
							
							
							<div>
								<input type="password" name="memPw" value="" placeholder="비밀번호 (대문자,소문자,숫자  8자리 이상을 입력하세요.) " required
								autocomplete="off" pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}"
								style="border-radius: 10px"><br>
							</div>
							<div>
								<input type="password" name="user_PW" placeholder="비밀번호 확인" required
								autocomplete="off" style="border-radius: 10px" onkeyup="checkPasswordMatch()"><br>
							</div>
					</div>



					<div class="field-wrap">
						<input type="text" class="wrap_input" name="memName" value=""
							placeholder="이름" required autocomplete="off" required
							pattern="[가-힣]{2,8}" style="border-radius: 10px"><br>
					</div>
					<div>
						<input type="text" id="nickname" name="memNick" 
							placeholder="닉네임" required autocomplete="off"
							style="border-radius: 10px"><br> 
							<span id="dis"></span>
					</div>
					<div>
						<input type="email" name="memMail" value="" placeholder="이메일 입력"
							required autocomplete="off"
							pattern="[0-9a-zA-Z]+@[0-9a-zA-Z]+(\.[a-z]+){1,2}"
							style="border-radius: 10px"><br> <input type="text"
							name="memTel" value="" placeholder="휴대전화 (형식: 010-0000-0000)" required
							autocomplete="off" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
							style="border-radius: 10px"><br> 
						<input type="date" class="form-control" id="bir" name="memBir" value="" style="border-radius: 10px">

					</div>

					<div>
						<select name="memSex" class="select" style="padding-top: 10px;">
							<option>성별</option>
							<option value="남자">남자</option>
							<option value="여자">여자</option>
						</select><br>


					</div>



					<div>
					<br>
						
						<button type="button" id="addrBtn" class="btn btn-info btn-sm" >주소검색</button><br>
						<input type="text" id="postAddr" name="memZip"
							placeholder="우편번호" required autocomplete="off"
							style="border-radius: 10px; width:30%;"><br>
						<input type="text" id="addr1" name="memAddr" placeholder="주소"
							required autocomplete="off" style="border-radius: 10px"><br>
						<input type="text" id="addr2" name="memAddr2" placeholder="상세주소"
							required autocomplete="off" style="border-radius: 10px"><br>
					</div>

					<button class="button button-block" />
					가 입 하 기
					</button>

				</form>

			</div>

			<div id="login">
				<h1>Welcome Back!</h1>

				<form action="/" method="post">

					<div class="field-wrap">
						<label> Email Address<span class="req">*</span>
						</label> <input type="email" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" required autocomplete="off" />
					</div>

					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>

					<button class="button button-block" />
					Log In
					</button>

			</div>

		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->



	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.serializeJSON/3.2.1/jquery.serializejson.min.js"
		referrerpolicy="no-referrer"></script>
	<script>
		$('#addrBtn').on('click', sample4_execDaumPostcode);

		function sample4_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('postAddr').value = data.zonecode;
					document.getElementById("addr1").value = roadAddr;
					//	                 document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

					/* var guideTextBox = document.getElementById("guide");
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if(data.autoRoadAddress) {
					    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
					    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
					    guideTextBox.style.display = 'block';

					} else if(data.autoJibunAddress) {
					    var expJibunAddr = data.autoJibunAddress;
					    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
					    guideTextBox.style.display = 'block';
					} else {
					    guideTextBox.innerHTML = '';
					    guideTextBox.style.display = 'none';
					} */
				}
			}).open();
			daum.Postcode.close();
		}
	</script>
	<script>
	$('#id').on('keyup',function(){
		  
		  //id value 가져오기
		  let v_idVal = $('#id').val();
		              
		  //공백제거
		  if(v_idVal.trim().length == 0) return;
		  
		  //jquery ajax
		  $.ajax({
			  type: 'post',
			  url: './idCheck.jsp',
			  data: {'uId':v_idVal},
			  success:function(aaa){
				  //console.log(aaa);
				  //id=disp라는 span영역에 msg출력하고 css()로 꾸며주기..
				  if(aaa.rst == "ok"){
					  $('#disp').html(aaa.msg).css('color','green');
				  }else{
					  $('#disp').html(aaa.msg).css('color','red');
				  }
			  },
			  error:function(xhr){
				  alert("상태:" + xhr.status);
			  },
			  dataType:'json'
		  });
	  });
	</script>
	
	<script>
	
	function checkPasswordMatch() {
		var password = document.getElementsByName("memPw")[0].value;
		var confirmPassword = document.getElementsByName("user_PW")[0].value;
		if (password != confirmPassword) {
			document.getElementById("errorMessage").innerHTML = "비밀번호가 일치하지 않습니다!";
		} else {
			document.getElementById("errorMessage").innerHTML = "";
		}
	}


	</script>
	<script>
	$('#nickname').on('keyup',function(){
		  
		  //id value 가져오기
		  let v_nickVal = $('#nickname').val();
		              
		  //공백제거
		  if(v_nickVal.trim().length == 0) return;
		  
		  //jquery ajax
		  $.ajax({
			  type: 'post',
			  url: './nickCheck.jsp',
			  data: {'uNick':v_nickVal},
			  success:function(aaa){
				  
				  if(aaa.rst == "ok"){
					  $('#dis').html(aaa.msg).css('color','green');
				  }else{
					  $('#dis').html(aaa.msg).css('color','red');
				  }
			  },
			  error:function(xhr){
				  alert("상태:" + xhr.status);
			  },
			  dataType:'json'
		  });
	  });
	</script>
</body>
</html>