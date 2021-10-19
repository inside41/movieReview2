<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>

<div class="bodycolumn">
	<div class="bodyclumn1">
		<h2>오늘의 추천영화</h2>
		<h5 class="minititle1">당신에게 감동을 주는 영화</h5>
		<h5 class="minititle2">Best Movie Of 2021</h5>
		<div class="fakeimg" style="height: 200px">

			<span class="tinyimg"> <a href="${contextPath}/main/movieDetail.do?id=${movieFreshScore[0].movie_id}"><img
					src="${contextPath}/resources/img/${movieFreshScore[5].poster}" alt="몰라"
					class="naver"></a>
			</span>

			<div class="slider">
				<input type="radio" name="slide" id="slide1" checked> <input
					type="radio" name="slide" id="slide2"> <input type="radio"
					name="slide" id="slide3"> <input type="radio" name="slide"
					id="slide4">
				<ul id="imgholder" class="imgs">
					<c:forEach var="list" items="${movieFreshScore}">
						<li class="chaeyoung">
							<a href="${contextPath}/main/movieDetail.do?id=${list.movie_id}">
								<img src="${contextPath}/resources/img/${list.poster}">
							</a>
						</li>
					</c:forEach>
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
				<a href="${contextPath}/news/news.do?newsTitle=article_news_001"
					class="news2p">&nbsp <strong>'베놈 2' 쿠키 영상까지 봐야 하는 이유</strong>
				</a>
			</p>
			<p>
				<a href="${contextPath}/news/news.do?newsTitle=article_news_002"
					class="news2p">&nbsp <strong>'007 노 타임 투 다이' 2주연속 1위</strong></a>
			</p>
			<p>
				<a href="${contextPath}/news/news.do?newsTitle=article_news_003"
					class="news2p">&nbsp <strong>최장기 007에 바치는 헌사 '노 타임 투
						다이'</strong></a>
			</p>
			<p>
				<a href="${contextPath}/news/news.do?newsTitle=article_news_004"
					class="news2p">&nbsp <strong>부산국제영화제 찾은 최민식</strong></a>
			</p>
			<p>
				<a href="${contextPath}/news/news.do?newsTitle=article_news_005"
					class="news2p">&nbsp <strong>제26회 부산국제영화제 개막식</strong></a>
			</p>
			<p>
				<a href="${contextPath}/news/news.do?newsTitle=article_news_006"
					class="news2p">&nbsp <strong>부산국제영화제 참석한</strong></a>
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

<div class="trailer">
	<strong>예고편</strong>
	<div class="post">

		<!-- 베놈 트레일러 시작 -->
		<c:forEach var="list" items="${movieTrailer}">
			<figure class="doubleozoom">
				<img class="doubleo"
					src="${contextPath}/resources/img/${list.poster}" alt="007"
					onclick="showPopup(true, '${list.trailer}')">
			</figure>
			<span class="doubleoplay"> <ion-icon
					onclick="showPopup(true, '${list.trailer}')"
					name="play-circle-outline"></ion-icon>
			</span>
		</c:forEach>



		<div id="doubleopopup" class="doubleohide">
			<div class="doubleocontent">
				<p>
					<iframe width="560" height="315" id="pop" src=""
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</p>
				<button onclick="closePopup()">닫기</button>
			</div>
		</div>
	</div>
</div>

