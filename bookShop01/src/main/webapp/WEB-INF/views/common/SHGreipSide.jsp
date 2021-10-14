<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<form action="${contextPath}/member/login.do"  method="post">
	<div class="logincolumn">
		<!-- .card>h2+.fakeimg+p>lorem10 -->
		<c:choose>
			<c:when test='${memberInfo.member_id == null || memberInfo.member_id == ""}'>
				<div class="login">
					<h2 class="login1">&nbsp&nbsp&nbsp&nbspLogin</h2>
					<div class="makeid">
						<label for="id"></label> 
						<input class="makeid1" type="text" id="id" name="member_id" placeholder="ID" > 
						<label for="password"></label> 
						<input class="makeid2" type="password" id="password" name="member_pw" placeholder="Password" >
						<button type="submit" class="makelog">로그인</button>
						<br>
					</div>
					<div class="login2">
						<div class="inp_chk">
							<!-- 체크시 checked 추가 -->
							<input type="checkbox" id="keepLogin" class="inp_radio"
								name="keepLogin"> <label for="keepLogin" class="makelog1">
								<span class="txt_lab">자동 로그인</span>
							</label>
						</div>
						<span class="txt_find"> 
							<a href="${contextPath}/member/memberForm.do" class="makelog2">&nbsp회원가입</a>
							<a href="${contextPath}/member/searchForm.do?searchValue=id" class="makelog3">&nbsp아이디 찾기</a> 
							<a href="${contextPath}/member/searchForm.do?searchValue=pw"class="makelog4">&nbsp비밀번호 찾기</a>
						</span>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="login">
					<h2 class="login1">&nbsp&nbsp&nbsp&nbsp ${memberInfo.member_name}님</h2>
					<div class="makeid">
						<a href="#">레벨</a>
						<a href="#">쪽지함</a>
						<br>
						<button class="makelog" type="submit" formaction="${contextPath}/member/logout.do">로그아웃</button>
						<br>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
</form>
<!-- .card>h3+div[class="fakeimg"]*3>p>{Image} -->
<div class="card">
	<h3>박스오피스 순위</h3>
	<p>
		<a href="#" class="ranking">1. 베놈2: 렛 데어 비 카니지<span
			class="diamond"> <ion-icon name="diamond-outline"></span>
			</ion-icon></a>
	</p>
	<p>
		<a href="#" class="ranking">2. 007 노 타임 투 다이<span class="diamond">
				<ion-icon name="diamond-outline"></ion-icon>
		</span></a>
	</p>
	<p>
		<a href="#" class="ranking">3. F20<span class="diamond"> <ion-icon
					name="diamond-outline"></ion-icon>
		</span></a>
	</p>
	<p>
		<a href="#" class="ranking">4. 그래비티<span class="diamond"> <ion-icon
					name="diamond-outline"></ion-icon>
		</span></a>
	</p>
	<p>
		<a href="#" class="ranking">5. Image<span class="diamond">
				<ion-icon name="diamond-outline"></ion-icon>
		</span></a>
	</p>
	<p>
		<a href="#" class="ranking">6. Image<span class="diamond">
				<ion-icon name="diamond-outline"></ion-icon>
		</span></a>
	</p>
</div>
<!-- .card>h3+p -->
<div class="plmovie">
	<h3>개봉 예정 영화</h3>
	<p>
		<a href="#" class="ranking">1. 부니베어 : 애들이 줄었어요</a>
	</p>
	<p>
		<a href="#" class="ranking">2. 매직 스쿨 : 초보마법사</a>
	</p>
	<p>
		<a href="#" class="ranking">3. 브라더</a>
	</p>
	<p>
		<a href="#" class="ranking">4. 피어썸</a>
	</p>
	<p>
		<a href="#" class="ranking">5. 쁘띠 마망</a>
	</p>
</div>
</div>


