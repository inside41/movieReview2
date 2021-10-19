<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("utf-8");
%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href="${contextPath}/resources/css/SHcss.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/SHheader.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/SHfooter.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/SHside.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/SHjoin.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/SHcss2.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/SHtrailer.css" rel="stylesheet" type="text/css">
<script src="${contextPath}/resources/jquery/jquery-1.6.2.min.js" type="text/javascript"></script>
<script src="${contextPath}/resources/jquery/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="${contextPath}/resources/jquery/stickysidebar.jquery.js" type="text/javascript"></script>
<script src="${contextPath}/resources/jquery/basic-jquery-slider.js" type="text/javascript"></script>
<script src="${contextPath}/resources/jquery/tabs.js" type="text/javascript"></script>
<script src="${contextPath}/resources/jquery/carousel.js" type="text/javascript"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

<meta charset="UTF-8">
<meta name="Author" content="k≡n¡k">
<meta name="Generator" content="eclipse">
<meta name="Keywords" content="">
<meta name="Description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script>
	// 슬라이드 
	$(document).ready(function() {
		$('#ad_main_banner').bjqs({
			'width' : 775,
			'height' : 145,
			'showMarkers' : true,
			'showControls' : false,
			'centerMarkers' : false
		});
	});
	// 스티키 		
	$(function() {
		$("#sticky").stickySidebar({
			timer : 100,
			easing : "easeInBounce"
		});
	});
	
	// /007시작/
	function showPopup(hasFilter, th) {
		const popup = document.querySelector('#doubleopopup');
		if (hasFilter) {
			popup.classList.add('has-filter');
		} else {
			popup.classList.remove('has-filter');
		}
		popup.classList.remove('doubleohide');

		var popupLink = document.getElementById('pop');

		if (th == 1) {
			popupLink.src = "http://www.youtube.com/embed/-FmWuCgJmxo";
		} else if (th == 2) {
			popupLink.src = "https://www.youtube.com/embed/PSpgQfVbMXA";
		} else if (th == 3) {
			popupLink.src = "https://www.youtube.com/embed/W7edvITC9g4";
		} else if (th == 4) {
			popupLink.src = "https://www.youtube.com/embed/-5Dc8EMVYBo";
		} else if (th == 5) {
			popupLink.src = "https://www.youtube.com/embed/yEPgqn5f1uk";
		}

	}
	
	function closePopup() {
		const popup = document.querySelector('#doubleopopup');
		popup.classList.add('doubleohide');
	}
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
	//다중 이미지 추가
	 var cnt=1;
	 function fn_addFile(){
		 $("#d_file").append("<br>"+"<strong>한글이름</strong><input type='text'>");
		 $("#d_file").append("<br>"+"<span class='bondtext1'>영어이름</span><input type='text'>");
		 $("#d_file").append("<br>"+"<span class='bondtext2' style='color: red;'>주연</span> <input type='text' >");
		 $("#d_file").append("<br>"+"<span> 배역 </span> <input type='text'>");
		 $("#d_file").append("<br>"+"<span>현 영화,개봉연도</span> <input type='text' > ");
		 $("#d_file").append("<br>"+"<span>흥행작,개봉연도</span><input type='text' >");
		 $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' /><br><br>");
		 
	  		cnt++;	  		
 }  
	 var cnt2=1; 
	 function fn_addDirector(){
		 $("#DirectorRow").append("<br>"+"<input type='text' placeholder='한글이름'>");
		 $("#DirectorRow").append("<input type='text'  placeholder='영어이름'>");
	  		cnt1++;
	 }  
	 
	 var cnt3=1;
	 function fn_addDirector2(){
		 $("#DirectorRow2").append("<br>"+"<input type='text' placeholder='한글이름'>");
		 $("#DirectorRow2").append("<input type='text'  placeholder='영어이름'>");
	  		cnt1++;
	 }  
	 var cnt4=1;
	 function fn_addDirector3(){
		 $("#DirectorRow3").append("<br>"+"<input type='text' placeholder='한글이름'>");
		 $("#DirectorRow3").append("<input type='text'  placeholder='영어이름'>");
	  		cnt1++;
	 }  
	
	 
</script>
	<title><tiles:insertAttribute name="title" /></title>
	
</head>
<body>
	<div id="outer_wrap">
		<div id="wrap">
			<header>
				   <tiles:insertAttribute name="header" />
			</header>
			<div class="clear"></div>
			<aside>
				 <tiles:insertAttribute name="side" />
			</aside>
			<article>
			 	<tiles:insertAttribute name="body" />
			</article>
			<div class="clear"></div>
			<footer>
        		<tiles:insertAttribute name="footer" />
        	</footer>
		</div>
		 <tiles:insertAttribute name="quickMenu" />
    </div>        	
</body>      
        
