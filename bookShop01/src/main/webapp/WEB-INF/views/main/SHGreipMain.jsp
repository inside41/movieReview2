<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>

<div class="bodycolumn">
	<!-- .card*2 -->
	<div class="card">
		<!-- h2+h5+.fakeimg+p*2 -->
		<h2>오늘의 추천영화</h2>
		<h5 class="minititle1">당신에게 감동을 주는 영화</h5>
		<h5 class="minititle2">Best Movie Of 2021</h5>
		<div class="fakeimg" style="height: 200px">

			<span class="tinyimg"> <a href="#"><img
					src="${contextPath}/resources/img/assemble.gif" alt="몰라"
					class="naver"></a>
			</span>

			<div class="slider">
				<input type="radio" name="slide" id="slide1" checked> <input
					type="radio" name="slide" id="slide2"> <input type="radio"
					name="slide" id="slide3"> <input type="radio" name="slide"
					id="slide4">
				<ul id="imgholder" class="imgs">
					<li class="chaeyoung"><a href="#"><img
							src="${contextPath}/resources/img/chae.gif"></a></li>
					<li class="sana"><a href="#"><img
							src="${contextPath}/resources/img/sana.gif"></a></li>
					<li class="bbobbbo"><a href="#"><img
							src="${contextPath}/resources/img/bbobbo.gif"></a></li>
					<li class="dog"><a href="#"><img
							src="${contextPath}/resources/img/dog.gif"></a></li>
				</ul>
				<div class="bullets">
					<label for="slide1">&nbsp;</label> <label for="slide2">&nbsp;</label>
					<label for="slide3">&nbsp;</label> <label for="slide4">&nbsp;</label>
				</div>
			</div>
		</div>
	</div>
	<div class="newshead">
		<h2>뉴스</h2>

		<div class="news" style="height: 250px">
			<a href="#"><img class="newsimg"
				src="${contextPath}/resources/img/tajja.jpg" alt="타WKd"></a>
		</div>
		<div class="news2" style="height: 250px">
			<p>
				<a href="./SH Greip_news.html" class="news2p">&nbsp <strong>'베놈
						2' 쿠키 영상까지 봐야 하는 이유</strong>
				</a>
			</p>
			<p>
				<a href="#" class="news2p">&nbsp <strong>'007 노 타임 투
						다이' 2주연속 1위</strong></a>
			</p>
			<p>
				<a href="#" class="news2p">&nbsp <strong>최장기 007에 바치는
						헌사 '노 타임 투 다이'</strong></a>
			</p>
			<p>
				<a href="#" class="news2p">&nbsp <strong>부산국제영화제 찾은 최민식</strong></a>
			</p>
			<p>
				<a href="#" class="news2p">&nbsp <strong>제26회 부산국제영화제
						개막식</strong></a>
			</p>
			<p>
				<a href="#" class="news2p">&nbsp <strong>부산국제영화제 참석한</strong></a>
			</p>

		</div>
	</div>
</div>

<div id="content">
	<h2>&nbsp</h2>

</div>
<!-- leftcolumn -->
<div class="rightcolumn">
	<!-- .card>h2+div[class="fakeimg"]*4>{Image} -->

</div>

