<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="bodycolumn">
            <!-- .card*2 -->
            <div class="card">

               <!-- info -->
               <div class="info" style="height: 3000px">
           <form>   
           <strong class="title1">한글제목</strong>
           <input type="text"  name="ko_title">
           	</form>
                  <img src="${contextPath}/resources/img/sangyoung.jpg" alt="상영중">
                  <br>
                  <form>
                  <span class="minititle1">영어제목</span>
                  <input type="text" name="en_title">
                  </form>
                  <br><br>
                  <!-- 007 트레일러,이미지 div -->
                
               
                  <div class="doubleo">
                    <!--  <iframe width="560" height="315" src=""
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe> -->                        
                    
                      <form>
                     <span>예고편링크 추가</span>
                     <input type="text" name="trailer">
                    </form> 
                    	
                     
                     <br>
                     <img class="doubleoimg" src="${contextPath}/resources/img/007.jpg" alt="007">    
                   <td align="right">이미지파일 첨부<input type="button" name="poster" value="파일 추가" onClick="fn_addFile()"/></td>
                     
                  </div>
                  
                  <!-- 신선도 -->
                  <div class="sinsun">
                     <span class="sinsun1"><strong>007 노 타임 투 다이</strong></span>                     
                     <br><br><br> 
                    <!-- 개봉등급장르러닝타임 id 다 어떻게 넣아야하는지 -->
                     
                     <span class="sinsun2">개봉</span>      
                     <input type="text" name="ReleaseDate">
            		 <span> 등급</span>
            		 <input type="text">
            		  <span> 장르</span>
            		 <input type="text">
            		  <span> 러닝타임</span>
            		 <input type="text">
            		
 					<strong class="sinsun2" name="sinsun2">신선도</strong>                  					
                     <img class="grape" src="${contextPath}/resources/img/grape.jpg" alt="포도">
                     <br><br><br> <br><span class="sinsun3">84%</span>
                     <img class="popcon" src="${contextPath}/resources/img/popcon.jpg" alt="팝콘">
                     <span class="sinsun3">&nbsp&nbsp&nbsp&nbsp&nbsp88%</span>
                     <br>
                     <span
                        class="sinsuntext">신선도&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp관객점수
                     </span>
                  </div>
                  <br><br>
                  <div class="story">
                     <div class="red_bar">
                     <form>
                        <span class="story1">story</span><br><br>
                        <input type="text" name="story"	>
                        </form>
                     </div>
                     <br>
                    
                  </div>
                 
                  <div class="actor">
                     <div class="red_bar">        
                        <span class="actor1">actor</span>
                     </div>
                  <div>
			          <div class="imgbond">
                           <!--  <img src="" alt="제임스 본드">  -->
                           <input type="button" name="poster" value="파일 추가" onClick="fn_addFile()"/> 
                           <form> <span class="다니엘"> <strong>한글이름</strong><br>  
                           <input type="text"> </form>
                           <form> <span class="bondtext1">영어이름</span>
                           <input type="text"> </form>
                           <form>  <br> <span class="bondtext2"><span style="color: red;">주연</span> <input type="text" > </form>| 
                           <form>  <span> 배역 </span> <input type="text" text> </form>
                              <br> 
                             <form> <span>현 영화,개봉연도</span> <input type="text" > </form>
                              <br> 
                              <form><span>흥행작,개봉연도</span><input type="text" > </form>
                                                        
                        </div>
                        
                        
                        
                        
                        
                        
                        <div class="imgsafin">
                           <img src="${contextPath}/resources/img/라미 말렉.jpg" alt="사핀">
                           <span class="다니엘"> <strong>라미 말렉</strong><br> <span class="bondtext1">Rami Malek</span> <br>
                              <span class="bondtext2"><span style="color: red;">주연</span> | 사핀 역 <br> 007 노 타임 투 다이,
                                 2021 <br> 보헤미안 랩소디, 2018</span> </span>
                        </div>
                        <div class="imglynch">
                           <img src="${contextPath}/resources/img/라샤나 린치.jpg" alt="노미">
                           <span class="다니엘"> <strong>라샤나 린치</strong><br> <span class="bondtext1">Lashana Lynch</span>
                              <br> <span class="bondtext2"><span style="color: red;">주연</span> | 노미 역 <br> 007 노 타임 투
                                 다이, 2021 <br> 캡틴 마블, 2019</span> </span>
                        </div>
                        <div class="imglea">
                           <img src="${contextPath}/resources/img/레아 세이두.jpg" alt="매들린 스완">
                           <span class="다니엘"> <strong>레아 세이두</strong><br> <span class="bondtext1">Lea Seydoux</span>
                              <br> <span class="bondtext2"><span style="color: red;">주연</span> | 매를린 스완 역 <br> 007 노 타임
                                 투 다이, 2021 <br> 프렌치 디스패치, 2020</span> </span>
                        </div>
                        <div class="ben">
                           <img src="${contextPath}/resources/img/벤 위쇼.jpg" alt="Q">
                           <span class="다니엘"> <strong>벤 위쇼</strong><br> <span class="bondtext1">Ben Whishaw</span>
                              <br> <span class="bondtext2"><span style="color: red;">조연</span> | Q 역 <br> 007 노 타임
                                 투 다이, 2021 <br> 서즈, 2019</span> </span>
                        </div>
                        <div class="ralph">
                           <img src="${contextPath}/resources/img/랄프 파인즈.jpg" alt="더 디그">
                           <span class="다니엘"> <strong>랄프 파인즈</strong><br> <span class="bondtext1">Ralph Fiennes</span>
                              <br> <span class="bondtext2"><span style="color: red;">조연</span> | M 역 <br> 007 노 타임
                                 투 다이, 2021 <br> 더 디그, 2021</span> </span>
                        </div>
                        <div class="naomie">
                           <img src="${contextPath}/resources/img/나오미 해리스.jpg" alt="이브 머니페이">
                           <span class="다니엘"> <strong>나오미 해리스</strong><br> <span class="bondtext1">Naomie Harris</span>
                              <br> <span class="bondtext2"><span style="color: red;">조연</span> | 이브 머니페이 역 <br> 007 노 타임
                                 투 다이, 2021 <br> 베놈2 : 렛 데어 비 카니지, 2021</span> </span>
                        </div>
                        <div class="ana">
                           <img src="${contextPath}/resources/img/아나 디 아르마스.jpg" alt="팔로마">
                           <span class="다니엘"> <strong>아나 디 아르마스</strong><br> <span class="bondtext1">Ana de Armas</span>
                              <br> <span class="bondtext2"><span style="color: red;">조연</span> | 팔로마 역 <br> 007 노 타임
                                 투 다이, 2021 <br> 더 나이트 클럭, 2020</span> </span>
                        </div>
                     </div>                 
                  </div>
                  <div class="producer">
                     <div class="red_bar">
                        <span class="producer1">Producer / Distributor</span><br><br>
                     </div>
                     <br>
                     <form>
                     <span style="color: red; name="Distributor" ">수입 </span> |  <input type="text">
                     <br><span style="color: red; name="Distributor" ">배급 </span> |  <input type="text">
                     </form>
                  </div>

                  <div class="director">
                     <div class="red_bar">
                        <span class="director1">Director</span><br><br>
                     </div>
                     <span class="director2" >제작진</span> <br><br><br>
                     <hr>
                     <div class="screenplay">
                        <strong> <br><br> <span style="color: red;">각본</span></strong>
                       
                        
                     </div>
                     <div class="neal">
                      <form>  <p> <span style="color: gray;"> </span></p><input type="text"></form>
                        
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <p> 로버트 웨이드<span style="color: gray;"> Robert Wade</span> </p>
                     </div>
                     <div class="neal">
                        <p>캐리 후쿠나가 <span style="color: gray;"> Cary Fukunaga </span> </p>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <p> 피비 윌러-브리지<span style="color: gray;"> Phoebe Waller-Bridge</span></p>
                     </div>
                     <div class="neal">
                        <p>이안 플레밍 <span style="color: gray;"> Ian Fleming </span></p>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     </div>
                     <hr>
                     <div class="screenplay">
                        <strong> <br><br> <span style="color: red;">제작</span></strong>
                        
                     </div>
                     <div class="neal">
                       <form> <p> <span style="color: gray;"> </span></p><input type="text"></form>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <p> 마이클 G. 윌슨<span style="color: gray;"> Michael G Wilson</span> </p>
                     </div>
                     <div class="neal">
                        <p>앤드류 노아케스 <span style="color: gray;"> Andrew Noakes </span> </p>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <p>페 헨리 볼크<span style="color: gray;">Per Henry Borch</span></p>
                     </div>
                     <div class="neal">
                        <p>엔조 시스티 <span style="color: gray;"> Enzo Sisti </span></p>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     </div>
                     <hr>
                     <div class="screenplay">
                        <strong> <br><br> <span style="color: red;">기획</span></strong>
                     </div>
                     <div class="neal">
                        <p>크리스 브라이험 <span style="color: gray;"> Chris Brigham </span></p>
                     </div>
                     <hr>
                  </div>
                  <div class="comment">
                     <div class="red_bar">
                        <span class="comment1">Comment</span><br><br>
                     </div>
                  </div>

                  <div id="disqus_thread"></div>

                  </div>
               </div>
            </div>
         </div>
        
</body>
</html>