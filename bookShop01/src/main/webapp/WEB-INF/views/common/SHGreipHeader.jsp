<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>

<!-- .header>h1+p>lorem5 -->
<div class="header">
	<a href="${contextPath}/main/main.do">
		<h1>SH Grape</h1>
		<p>당신의 영화 라이프를 안락하게</p>
	</a>
</div>
<!-- .topnav>a[href=#]*4>{Link} -->
<div class="topnav">
	<a href="${contextPath}/member/shmoviemain.do">detail</a> 
	<a href="#">Link</a> 
	<a href="#">Link</a> 
	<a href="#">Link</a>
	<div class="search">
		<input class="searchinput" type="text"
			placeholder="Search movies, TV, actors, more...">
		<button class="searchbutton">검색</button>
	</div>
</div>

