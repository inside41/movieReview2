<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>

         <div class="bodycolumn">
            <div class="card">
<%--                <script src="${contextPath}/resources/js/${newsTitle}.js"></script> --%>
               <c:import url="/resources/news/${newsTitle}.html" charEncoding="utf-8"></c:import>
            </div>
         </div>

</html>