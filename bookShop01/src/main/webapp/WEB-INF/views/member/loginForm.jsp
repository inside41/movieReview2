<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
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
	<div class="aologin">
		<H3>회원 로그인 창</H3>
		<DIV id="detail_table">
			<form action="${contextPath}/member/login.do" method="post">
				<TABLE>
					<TBODY class="aologin2">
						<TR class="dot_line">
							<TD class="fixed_join1">아이디</TD>
							<TD><input name="member_id" type="text" size="20" /></TD>
						</TR>
						<TR class="solid_line">
							<TD class="fixed_join1">비밀번호</TD>
							<TD><input name="member_pw" type="password" size="20" /></TD>
						</TR>
					</TBODY>
				</TABLE>
				
					<br> <br> <INPUT type="submit" value="로그인"> <INPUT
						type="button" value="초기화"> <Br> <br> 
						<div class="aologin3"><a
						href="${contextPath}/member/searchForm.do?searchValue=id">아이디
						찾기</a> | <a href="${contextPath}/member/searchForm.do?searchValue=pw">비밀번호
						찾기</a> | <a href="${contextPath}/member/memberForm.do">회원가입</a> | <a
						href="#">고객 센터</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>