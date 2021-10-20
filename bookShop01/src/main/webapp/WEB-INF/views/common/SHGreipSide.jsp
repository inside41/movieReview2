<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<script>
	window.onload = function() {
		var bt = document.getElementById('bt');
		bt.onclick = function() {
			window.open('https://www.naver.com', 'pop', 
					'width = 600, height = 400, left = -1200, top = 200');
		};
	};
	function newPage1() {
		window.location.href = 'https://www.naver.com'
	}
	function newPage2() {
		window.location.href = '#'
	}
	function newPage3() {
		window.location.href = '#'
	}
	function newPage4() {
		window.location.href = '#'
	}
	function newPage5() {
		window.location.href = '#'
	}
</script>
<form action="${contextPath}/member/login.do" method="post">
	<div class="logincolumn">
		<!-- .card>h2+.fakeimg+p>lorem10 -->
		<c:choose>
			<c:when
				test='${memberInfo.member_id == null || memberInfo.member_id == ""}'>
				<div class="login">
				<h2 class="login1">&nbsp&nbsp&nbsp&nbspLogin</h2>
					<div class="makeid">
						<label for="id"></label> <input class="makeid1" type="text"
							id="id" name="member_id" placeholder="ID"> <label
							for="password"></label> <input class="makeid2" type="password"
							id="password" name="member_pw" placeholder="Password">
						<button type="submit" class="makelog44">로그인</button>
						<br>
					</div>
					<div class="login2">
						<div class="inp_chk">
							<!-- 체크시 checked 추가 -->
							<input type="checkbox" id="keepLogin" class="inp_radio"
								name="keepLogin"> <label for="keepLogin"
								class="makelog1"> <span class="txt_lab">자동 로그인</span>
							</label>
						</div>
						<span class="txt_find"> <a
							href="${contextPath}/member/memberForm.do" class="makelog2">&nbsp회원가입</a>
							<a href="${contextPath}/member/searchForm.do?searchValue=id"
							class="makelog3">&nbsp아이디 찾기</a> <a
							href="${contextPath}/member/searchForm.do?searchValue=pw"
							class="makelog4">&nbsp비밀번호 찾기</a>
						</span>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="login">
					<div class="login1">&nbsp&nbsp${memberInfo.member_name}님</div>

					<div class="makeid">
						<input id=logbutton class="알림" type='button' onclick='newPage1()'
							value=알림> <input id=logbutton class="내글현황" type='button'
							onclick='newPage2()' value=내글현황> <input id=bt class="쪽지"
							type='button' value=쪽지>
						<input id=logbutton class="스크랩" type='button' onclick='newPage4()'
							value=스크랩> <input id=logbutton class="정보수정" type='button'
							onclick='newPage5()' value=정보수정>
						<button class="makelog" type="submit"
							formaction="${contextPath}/member/logout.do">로그아웃</button>
						<br>
					</div>
				</div>
			</c:otherwise>
		</c:choose>


		<div class="ranking">
			<h3>박스오피스 순위</h3>
			<c:forEach var="list" items="${movieRankingList}">
				<p>
					<a href="#" class="ranking1">${list.ko_title} <span
						class="diamond"> <ion-icon name="diamond-outline"></ion-icon>
					</span>
					</a>
				</p>
			</c:forEach>
		</div>

		<!-- .card>h3+p -->
		<div class="plmovie">
			<h3>개봉 예정 영화</h3>
			<c:forEach var="list" items="${movieReleaseList}">
				<p>
					<a href="#" class="ranking2">${list.ko_title}</a>
				</p>
			</c:forEach>
		</div>
	</div>
</form>

