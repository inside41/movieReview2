<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" 
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
		}
	</script>
</c:if>
</head>
<body>
	<c:choose>
		<c:when test='${(param.searchValue=="id")}'>
			<H3>아이디 찾기</H3>
		</c:when>
		<c:otherwise>
			<H3>비밀번호 찾기</H3>
		</c:otherwise>
	</c:choose>
	<DIV id="detail_table">
		<form method="post">
			<TABLE>
				<TBODY>
					<c:if test='${param.searchValue=="pw" || param.searchValue=="id"}'>
						<c:if test='${(param.searchValue=="pw")}'>
							<TR class="dot_line">
								<TD class="fixed_join">아이디</TD>
								<TD><input name="member_id" type="text" size="20" /></TD>
							</TR>
							<TR class="dot_line">
								<TD class="fixed_join">이름</TD>
								<TD><input name="member_name" type="text" size="20" /></TD>
							</TR>
						</c:if>
						<TR class="solid_line">
							<td class="fixed_join">이메일<br>(e-mail)</td>
							<td><input size="10px"   type="text" name="email1" /> @ <input  size="10px"  type="text"name="email2" /> 
							  <select name="email2" onChange=""	title="직접입력">
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
								</select>
							</td>
						</TR>
						<TR>
							<c:choose>
								<c:when test='${(param.searchValue=="id")}'>
									<TD><INPUT type="submit" value="아이디 찾기" action="${contextPath}/member/searchMember.do?searchValue=idc"></TD>
								</c:when>
								<c:otherwise>
									<TD><INPUT type="submit" value="비밀번호 찾기" action="${contextPath}/member/searchMember.do?searchValue=pwc"></TD>
								</c:otherwise>
							</c:choose>
						</TR>
					</c:if>
					<c:choose>
							<c:when test='${(param.searchValue=="idc")}'>
								<TR>
									<TD class="">아이디</TD>
									<TD class="">${memberVO.member_id}</TD>
								</TR>
							</c:when>
							<c:when test='${(param.searchValue=="pwc")}'>
								<TR>
									<TD class="">아이디</TD>
									<TD class="">${memberVO.member_id}</TD>
								</TR>
								<TR>
									<TD class="">비밀번호</TD>
									<TD class="">${memberVO.member_pw}</TD>
								</TR>
							</c:when>
					</c:choose>
				</TBODY>
			</TABLE>

			<Br>
			<br> <a href="${contextPath}/member/loginForm.do">로그인</a> | <a
				href="${contextPath}/member/memberForm.do">회원가입</a> | <a href="#">고객
				센터</a>
		</form>
</body>
</html>