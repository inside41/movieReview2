<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<div class="trailer">
	<strong>예고편</strong>
	<div class="post">

		<!-- 베놈 트레일러 시작 -->
		<figure class="doubleozoom">
			<img class="doubleo" src="${contextPath}/resources/img/venom.jpg"
				alt="007" onclick="showPopup(true, 1)">
		</figure>
		<span class="doubleoplay"> <ion-icon onclick="showPopup(true)"
				name="play-circle-outline"></ion-icon>
		</span>

		<!-- 베놈 트레일러 끝 -->

		<!-- 007 트레일러 시작 -->
		<figure class="doubleozoom">
			<img class="doubleo" src="${contextPath}/resources/img/007.jpg"
				alt="007" onclick="showPopup(true, 2)">
		</figure>
		<span class="doubleoplay"> <ion-icon onclick="showPopup(true)"
				name="play-circle-outline"></ion-icon>
		</span>

		<!-- 007 트레일러 끝 -->

		<figure class="doubleozoom">
			<img class="doubleo" src="${contextPath}/resources/img/nowayhome.jpg"
				alt="007" onclick="showPopup(true, 3)">
		</figure>
		<span class="doubleoplay"> <ion-icon onclick="showPopup(true)"
				name="play-circle-outline"></ion-icon>
		</span>


		<figure class="doubleozoom">
			<img class="doubleo" src="${contextPath}/resources/img/dune.jpg"
				alt="007" onclick="showPopup(true, 4)">
		</figure>
		<span class="doubleoplay"> <ion-icon onclick="showPopup(true)"
				name="play-circle-outline"></ion-icon>
		</span>


		<figure class="doubleozoom">
			<img class="doubleo" src="${contextPath}/resources/img/matrix_re.jpg"
				alt="007" onclick="showPopup(true, 5)">
		</figure>
		<span class="doubleoplay"> <ion-icon onclick="showPopup(true)"
				name="play-circle-outline"></ion-icon>
		</span>

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
<!-- .footer>h2>{Footer} -->
<div class="footer">
	<h2>Footer</h2>
</div>

