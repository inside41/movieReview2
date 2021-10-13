<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	alert("예기치 못한 오류가 발생했습니다.");
}
</script>
</c:if>
<script>
function checkPW(){
	var member_pw = document.getElementById("member_pw");
	var member_pw_check = document.getElementById("member_pw_check");
	var formID = document.getElementById("frm");
	
	if(member_pw.value == member_pw_check.value){
		formID.action="${contextPath}/member/changeMemberPW.do" 
		formID.submit();
	}else{
		alert("비밀번호가 일치하지 않습니다.");
	}
}
</script>
</head>
<body>
	<H3>비밀번호 변경</H3>
	<DIV id="detail_table">
	<form id="frm" method="post">
		<TABLE>
			<TBODY>
				<TR class="dot_line">
					<TD class="fixed_join">아이디</TD>
					<TD><input name="member_id" type="text" size="20" value="${memberInfo.member_id}" readonly/></TD>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">이름</TD>
					<TD><input name="member_name" type="text" size="20" value="${memberInfo.member_name}" readonly/></TD>
				</TR>
				<TR class="solid_line">
					<td class="fixed_join">이메일<br>(e-mail)</td>
					<td><input size="10px"   type="text" name="email1" value="${memberInfo.email1}" readonly/> 
					@ 
					<input  size="10px"  type="text"name="email2" value="${memberInfo.email2}" readonly/> 
					</td>
				</TR>
				<TR class="dot_line">
					<TD class="fixed_join">비밀번호 변경</TD>
					<TD><input id="member_pw" name="member_pw" type="password" size="20" required/></TD>
				</TR>
				<TR class="solid_line">
					<TD class="fixed_join">비밀번호 확인</TD>
					<TD><input id="member_pw_check" name="member_pw_check" type="password" size="20" required/></TD>
				</TR>
			</TBODY>
		</TABLE>
		<br><br>
		<INPUT	type="button" value="확인" onclick="checkPW()"> 
		
		<Br><br>
		   <a href="${contextPath}/member/loginForm.do">로그인</a>  | 
		   <a href="${contextPath}/member/searchForm.do?searchValue=id">아이디 찾기</a>  | 
		   <a href="${contextPath}/member/searchForm.do?searchValue=pw">비밀번호 찾기</a> | 
		   <a href="${contextPath}/member/memberForm.do">회원가입</a>    | 
		   <a href="#">고객 센터</a>
	</form>		
</body>
</html>