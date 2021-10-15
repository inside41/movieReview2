<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script language="javascript">
function selectEmail(ele){ var $ele = $(ele); var $email2 = $('input[name=email2]'); // '1'인 경우 직접입력 
if($ele.val() == "1"){ 
	$email2.attr('readonly', false); 
	$email2.val(''); 
	} else { 
		$email2.attr('readonly', true); 
		$email2.val($ele.val()); } }
</script>
<title>아이디 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<form action="../member/find_id.do" method="post">
				<div class="w3-center w3-large w3-margin-top">
					<h3>아이디 찾기</h3>
				</div>
				<div>
<!--					<p>
  					<label>Email</label>
						<input class="w3-input" type="text" id="email:e" name="email" alt="이메일"required>
					</p> -->	
<p>
<label>이름</label>&nbsp;&nbsp;&nbsp;
<input class="form_w200" type="text" id="name" name="name" alt="이름"required>
</p>
<tr>
<br>				
<th scope="row">이메일 <span class="em_red"></th>
<tr> 
<input name="email1" type="text"> @ <input name="email2" type="text"> 
	<select name="select_email" onChange="selectEmail(this)"> 
	<option value="" selected>선택하세요</option>
	<option value="1">직접입력</option> 
	<option value="naver.com">naver.com</option> 
	<option value="gmail.com">gmail.com</option> 
	<option value="hanmail.net">hanmail.net</option> 
	 </select> 
</tr>				
					<p class="form_w200">
						<button type="submit" id=findBtn class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">find</button>
						<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
						
					</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>