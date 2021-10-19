<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("입력하신 정보가 존재하지 않습니다. 다시 시도해 주세요.");
		}
	</script>
</c:if>
<script>
	function selectEmail() {
		var email2Select = document.getElementById("email2Select");
		var email2Text = document.getElementById("email2Text");
		var selectValue = email2Select.options[email2Select.selectedIndex].value;
		if (selectValue != "") {
			email2Text.value = "";
			email2Text.disabled = true;
		} else {
			email2Text.disabled = false;
		}
	}
</script>
</head>
<body>
	<div class="findid">
		<c:choose>
			<c:when test='${(param.searchValue=="id")}'>

				<H3>이메일 주소로 계정 찾기</H3>
				<br>
				<span class="findid1">회원정보에 등록된 메일 주소로 아이디를 알려드립니다. 메일 주소를
					입력하고 "아이디 찾기" 버튼을 클릭해 주세요.</span>
			</c:when>
			<c:otherwise>
				<H3>비밀번호 찾기</H3>
			</c:otherwise>
		</c:choose>
		<DIV id="detail_table">
			<form method="post">
				<TABLE class="findid2">
					<TBODY>
						<c:if test='${param.searchValue=="pw" || param.searchValue=="id"}'>
							<c:if test='${(param.searchValue=="pw")}'>
								<TR class="dot_line">
									<TD class="fixed_join">아이디</TD>
									<TD><input name="member_id" type="text" size="20" required /></TD>
								</TR>
								<TR class="dot_line">
									<TD class="fixed_join">이름</TD>
									<TD><input name="member_name" type="text" size="20"
										required /></TD>
								</TR>
							</c:if>

							<TR class="solid_line">
								
								<td class="fixed_join">이메일<br>(e-mail)
								</td>
								<td><input size="10px" type="text" name="email1" required />
									@ <input id="email2Text" size="10px" type="text" name="email2"
									required /> <select id="email2Select" name="email2"
									onChange="selectEmail()" title="직접입력">
										<option value="">직접입력</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="naver.com">naver.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="paran.com">paran.com</option>
										<option value="nate.com">nate.com</option>
										<option value="google.com">google.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="empal.com">empal.com</option>
										<option value="korea.com">korea.com</option>
										<option value="freechal.com">freechal.com</option>
								</select></td>
							</TR>
							<TR>
								<c:choose>
									<c:when test='${(param.searchValue=="id")}'>
										<TD><INPUT class="findid3" type="submit" value="아이디 찾기"
											formaction="${contextPath}/member/searchMember.do?searchValue=idc"></TD>
									</c:when>
									<c:otherwise>
										<TD><INPUT class="findid4" type="submit" value="비밀번호 찾기"
											formaction="${contextPath}/member/searchMember.do?searchValue=pwc"></TD>
									</c:otherwise>
								</c:choose>
							</TR>
						</c:if>
						<c:choose>
							<c:when test='${(searchValue=="idc")}'>
								<TR>
									<TD class="">아이디</TD>
									<TD>${member_id}</TD>
								</TR>
							</c:when>
						</c:choose>
					</TBODY>
				</TABLE>

				<Br> <br> <a href="${contextPath}/member/loginForm.do">로그인</a>
				| <a href="${contextPath}/member/memberForm.do">회원가입</a> | <a
					href="#">고객 센터</a>
			</form>
		</div>
	</div>
</body>
</html>