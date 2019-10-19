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
	<title>Footer</title>
	</head>
<body>
<div id="wrap">
	<div id="footer">
		<div class="col1">
			<img class="footerLogo" src="<c:url value="/resources/img/logo.png"/>" alt="logo" />
		</div>
		<div class="col2">
			<br />
			<h4 class="left colorDarkGray">(C) AnicoBoard Project</h4>
			<hr />
			<p class="left colorDarkGray"></p>
			<p class="left colorDarkGray"><a class="boldCoral" href="mailto:highwind26@gmail.com">highwind26@gmail.com</a></p>
		</div>
		<div class="col3">
			<ul>
				<li><a href="https://twitter.com/?lang=ko" target="_blank"><i class="fab fa-twitter fa-3x"></i></a></li>
				<li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook fa-3x"></i></a></li>
				<li><a href="https://www.instagram.com/?hl=ko" target="_blank"><i class="fab fa-instagram fa-3x"></i></a></li>
				<li><a href="https://story.kakao.com/ch/kakaostory" target="_blank"><i class="fab fa-kickstarter fa-3x"></i></a></li>
				<li><a href="https://plus.google.com/?hl=ko" target="_blank"><i class="fab fa-google-plus fa-3x"></i></a></li>
				<li><a href="https://www.pinterest.co.kr/" target="_blank"><i class="fab fa-pinterest-square fa-3x"></i></a></li>
			</ul>
			<hr />
			<ul>
				<li><a href=""></a></li>
				<li><a href=""></a></li>
				<li><a href=""></a></li>
				<li><a href=""></a></li>
			</ul>
		</div>
	</div>
	<div>
		<h4>Copyright AnicoBoard. Published Leos All right Reserved</h4>
	</div>
</div>
</body>
</html>