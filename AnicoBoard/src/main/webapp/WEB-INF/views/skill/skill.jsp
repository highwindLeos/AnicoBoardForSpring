<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>WelCome To AnicoBoard</title>
  <!-- Bootstrap Core CSS -->
  <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
  <!-- Custom Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
  <link href="<c:url value="/resources/vendor/simple-line-icons/css/simple-line-icons.css" />" rel="stylesheet">
  <!-- Custom CSS -->
  <link href='<c:url value="/resources/css/main.css" />' rel="stylesheet">
  <link href='<c:url value="/resources/css/stylish-portfolio.min.css" />' rel="stylesheet">
</head>
<script>
	home = () => { location.href = '${conPath }/' }
</script>
<body id="page-top" class="backGroundNomal">
  <!-- Header -->
  <header class="masthead d-flex">
    <div class="container text-center my-auto">
      <h1 class="mb-1 capsule colorDarkGray">Skill Inventory List Card</h1>
      <div class="marginTop40"></div>
	  <button type="button" class="btn btn-dark btn-xl" onclick="home()">Home</button>
    </div>
  </header>
  <!-- Skill Inventory -->
  <section class="content-section bg-primary text-white text-center" id="services">
    <div class="container">
      <div class="content-section-heading">
        <h1 class="mb-5">
        	<a href="https://developer.mozilla.org/ko/docs/Web/JavaScript" target="_blank">
        		<i class="fab fa-js-square colorWhite"></i>
        	</a>&nbsp;
        	<a href="https://ko.reactjs.org/"  target="_blank">
        		<i class="fab fa-react colorWhite"></i>
        	</a>&nbsp;
        	<a href="https://www.oracle.com/technetwork/java/javase/downloads/index.html" target="_blank">
				<i class="fab fa-java colorWhite"></i>
			</a>&nbsp;	
        	<a href="http://docs.php.net/manual/kr/" target="_blank">
				<i class="fab fa-php colorWhite"></i>
			</a>&nbsp;	
        	<a href="https://www.oracle.com/kr/index.html" target="_blank">
				<i class="fas fa-database colorWhite"></i>
			</a>&nbsp;	
        	<a href="https://github.com/" target="_blank">
	        	<i class="fab fa-github-square colorWhite"></i>
			</a>
        </h1>
        <h2 class="mb-5">In Function Library</h2>
      </div>
    </div>
    <div class="container-flude">
      <div class="row">
		 <div class="col-2 capsule"><h6>Project Name</h6></div>
	     <div class="col capsule"><h6>Start Date</h6></div>
	     <div class="col capsule"><h6>End Date</h6></div>
		 <div class="col capsule"><h6>Customer</h6></div>
	     <div class="col capsule"><h6>Task</h6></div>
	     <div class="col capsule"><h6>O/S</h6></div>
		 <div class="col capsule"><h6>Language</h6></div>
	     <div class="col capsule"><h6>DBMS</h6></div>
	     <div class="col capsule"><h6>Dev Tool</h6></div>
	     <div class="col-2 capsule"><h6>Stack List</h6></div>
      </div>
    </div>
  </section>
  <!-- Map 
  <section id="contact" class="map">
  	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3894.9617660486956!2d127.03512035316923!3d37.64622091024945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbeaa635419c9%3A0x2fea4b6a0f2a70aa!2z7ISc7Jq47Yq567OE7IucIOuPhOu0ieq1rCDssL3rj5kg64-E67SJ66GcMTEy6ri4!5e0!3m2!1sko!2skr!4v1571402334132!5m2!1sko!2skr" 
  	 width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    <br />
    <small>
      <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
    </small>
  </section>
  -->
  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <h2 class="colorWhite">Here, Programing Stack!!!</h2>
      <hr>
      <div class="marginTop60"></div>
      <p class="small mb-0 colorWhite">Copyright &copy; AnicoBoard 2019 [Coding By Leos]</p>
    </div>
  </footer>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
</body>
  <!-- Bootstrap core JavaScript -->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/vendor/jquery/jquery.js" />"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <!-- Plugin JavaScript -->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
  <!-- Custom scripts for this template -->
  <script src="<c:url value="/resources/js/stylish-portfolio.min.js" />"></script>
</html>