<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link href="https://fonts.googleapis.com/css?family=Arvo|Lato|Roboto+Condensed" rel="stylesheet">
		<link href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" rel="stylesheet" >
		<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/board.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/slick/slick.css"/>" rel="stylesheet" type="text/css" />

		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	  	<script src="<c:url value="/resources/js/main.js" />"></script>
	  	
		<title>Main Board</title>
	</head>
<body>
<c:if test="${not empty checkResult }">
	<script>swal('${checkResult }', '','success');</script>
</c:if>
<div id="wrap">
	<!-- 
	<div id="header">
		<c:if test="${empty loginOk and empty adminOk }">
		<ul id="gnb">
			<li><a href="${conPath }/loginForm.do"><i class="fas fa-key"></i> ${conPath } 로그인[Login]</a></li>
			<li><a href="${conPath }/joinForm.do"><i class="fas fa-registered"></i> 회원가입[Join]</a></li>
			<li><a href="${conPath }/notice.do"><i class="fas fa-clipboard-list"></i> 공지사항[Notice]</a></li>
		</ul>
		</c:if>
		<c:if test="${not empty loginOk }">
		<ul id="gnb">
			<li>${sessionMdto.mName } 님 어서오세요</li>
			<li><a href="${conPath }/profileView.do?mId=${sessionMdto.mId }"><i class="fas fa-user-circle"></i></i> 프로필[Profile]</a></li>
			<li><a href="${conPath }/notice.do"><i class="fas fa-clipboard-list"></i> 공지사항[Notice]</a></li>
			<li><a href="${conPath }/logout.do"><i class="fas fa-clipboard-list"></i> Log-Out</a></li>
		</ul>
		</c:if>
		<c:if test="${not empty adminOk }">
		<ul id="gnb">
			<li>관리자 Mode : ${sessionAdto.aName }</li>
			<li><a href="${conPath }/managerView.do"><i class="fas fa-user-circle"></i></i> 관리페이지</a></li>
			<li><a href="${conPath }/notice.do"><i class="fas fa-clipboard-list"></i> 공지사항[Notice]</a></li>
			<li><a href="${conPath }/logout.do"><i class="fas fa-clipboard-list"></i> Log-Out</a></li>
		</ul>
		</c:if>
	</div>
	-->
	<div id="logo">
		<a href="${conPath }/"><img class="logo" src="<c:url value="/resources/img/logo.png"/>" alt="Logo" /></a>
		<audio id="coin" src ="<c:url value="/resources/js/source/Coin.wav" />"></audio>
	</div>
	<div id="navi">
		<ul id="lnb">
			<li><a href="${conPath }/"><i class="fas fa-home"></i> 홈</a></li>
			<li><a href="${conPath }/manualView.do"><i class="fab fa-glide"></i> 이용안내</a></li>
			<li><a href="${conPath }/gameSearchView.do"><i class="fas fa-search"></i> 게임검색</a></li>
			<li><a href="${conPath }/gameListView.do"><i class="fas fa-list-alt"></i> 게임리스트</a></li>
			<li><a href="${conPath }/boardListView.do"><i class="fas fa-keyboard"></i> 자유게시판</a></li>
		</ul>
	</div>
	<div class="single-item">
	<c:forEach var="i" begin="1" end="5" >
	  <div>
	  	<img class="slideImg" src="<c:url value="/resources/img//slide${i}.png" />" alt="slide${i }" />
	  </div>
	  <c:set var="i" value="${i+1 }"></c:set>
	</c:forEach>
	</div>
</div>	
<script src="<c:url value="/resources/slick/slick.js"/>" ></script>
<script src="<c:url value="/resources/js/slick.js"/>" ></script>
</body>
</html>