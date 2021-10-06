<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String searchValue = request.getParameter("searchValue");
%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}

function result(){
	alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
</head>
<body>
	<H3>아이디, 비밀번호 찾기</H3>
	<DIV id="detail_table">
	<form action="${contextPath}/member/searchMember.do" method="post">
		<TABLE>
			<TBODY>
				
					<TR class="dot_line">
						<TD class="fixed_join">아이디</TD>
						<TD><input name="member_id" type="text" size="20" /></TD>
					</TR>
				
				<TR class="dot_line">
					<TD class="fixed_join">이름</TD>
					<TD><input name="member_name" type="text" size="20" /></TD>
				</TR>
				<TR class="solid_line">
					<TD class="fixed_join">이메일</TD>
					<TD><input name="member_email" type="text" size="20" /></TD>
				</TR>
				<TR>
					<
					<TD><INPUT	type="submit" value="아이디 찾기"> </TD>
					<TD><INPUT	type="submit" value="비밀번호 찾기"> </TD>
				</TR>
			</TBODY>
		</TABLE>
		
		<Br><br>
		   <a href="${contextPath}/member/loginForm.do">로그인</a>  | 
		   <a href="${contextPath}/member/memberForm.do">회원가입</a>    | 
		   <a href="#">고객 센터</a>
	</form>		
</body>
</html>