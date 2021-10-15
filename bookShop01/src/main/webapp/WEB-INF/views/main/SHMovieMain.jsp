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
            <form>
            <div class="card">

               <!-- info -->
               <div class="info" style="height: 3000px">
              
           <strong class="title1">한글제목</strong>
           <input type="text"  name="ko_title">
           	
                  <img src="${contextPath}/resources/img/sangyoung.jpg" alt="상영중">
                  <br>
                  
                  <span class="minititle1">영어제목</span>
                  <input type="text" name="en_title">
                  
                  <br><br>
                  <!-- 007 트레일러,이미지 div -->
                
               
                  <div class="doubleo">
                    <!--  <iframe width="560" height="315" src=""
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe> -->                        
                    
                      
                     <span>예고편링크 추가</span>
                     <input type="text" name="trailer">
                 
                     <br>
                     <img class="doubleoimg" src="" alt="007">    
                   	이미지파일 첨부<input type="file" name="poster" value="파일 선택"/>
                   	<div id="AddPoster"></div>
                   	
                   
                     
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
                     
                        <span class="story1">story</span><br><br>
                        <input type="text" name="story"	>
                        
                     </div>
                     <br>
                    
                  </div>
                 
                  <div class="actor">
                     <div class="red_bar">        
                        <span class="actor1">actor</span>
                     </div>
                  <div>
<!-- 			          <div class="imgbond">
                            <img src="" alt="제임스 본드"> 
                           <input type="button" name="poster" value="파일 추가" onClick="fn_addFile()"/> 
                            <span class="다니엘"> 
                            <strong>한글이름</strong><input type="text"> 
                            <span class="bondtext1">영어이름</span><input type="text"> 
                             <br> <span class="bondtext2"><span style="color: red;">주연</span> <input type="text" > | 
                             <span> 배역 </span> <input type="text" text> 
                              <br> 
                              <span>현 영화,개봉연도</span> <input type="text" > 
                              <br> 
                              <span>흥행작,개봉연도</span><input type="text" > 
                                                        
                        </div> -->
                        배역 추가<input type="button" name="movieactor" value="파일 추가" onClick="fn_addFile()"/>
                     	<div id="d_file"></div>
                     </div>                 
                  </div>
                  <div class="producer">
                     <div class="red_bar">
                        <span class="producer1">Producer / Distributor</span><br><br>
                     </div>
                     <br>
                     
                     <span style="color: red; name="Distributor" ">수입 </span> |  <input type="text">
                     <br><span style="color: red; name="Distributor" ">배급 </span> |  <input type="text">
                     
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
                                          	<div id="DirectorRow"></div>
                     	  <input type="button" name="directorname" value="디렉터 추가" onClick="fn_addDirector()"/>
                    
                     <!-- <div class="neal"> -->
              
                     <hr>
                     
                     <div class="screenplay">
                        <strong> <br><br> <span style="color: red;">제작</span></strong>
                        
                     </div>
                     <div id="DirectorRow2"></div>
                     	  <input type="button" name="directorname2" value="디렉터 추가" onClick="fn_addDirector2()"/>

                     <hr>
                     <div class="screenplay">
                        <strong> <br><br> <span style="color: red;">기획</span></strong>
                     </div>
                     <div id="DirectorRow3"></div>
                     	  <input type="button" name="directorname3" value="디렉터 추가" onClick="fn_addDirector3()"/>

                     <hr>
                  <!-- </div> -->
                  </form>
                  <div class="comment">
                     <div class="red_bar">
                        <span class="comment1">Comment</span><br><br>
                     </div>
                  </div>

