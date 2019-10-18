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
  <link href='<c:url value="/resources/css/stylish-portfolio.min.css" />' rel="stylesheet">
</head>

<body id="page-top">
  <!-- Navigation -->
  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a class="js-scroll-trigger" href="#page-top">Home AnicoBarad</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#about">About</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#services">Services</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#portfolio">Portfolio</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#contact">Contact</a>
      </li>
      <hr> <!-- Line -->
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href='<c:url value="/board/main/"/>'>Board</a>
      </li>
    </ul>
  </nav>
  <!-- Header -->
  <header class="masthead d-flex">
    <div class="container text-center my-auto">
      <h1 class="mb-1">WelCome To AnicoBoard - Portfolio</h1>
      <h3 class="mb-5">
        <em>Used Bootstrap Library</em>
      </h3>
      <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
    </div>
    <div class="overlay"></div>
  </header>
  <!-- About -->
  <section class="content-section bg-light" id="about">
    <div class="container text-center">
      <div class="row">
        <div class="col-lg-10 mx-auto">
          <h2>Stylish Portfolio is the perfect theme for your next project!</h2>
          <p class="lead mb-5">이 테마는 Unsplash 의 Photo Portfolio 를 이용하여 제작되었습니다.
            <a href="https://unsplash.com/"><i class="fas fa-camera-retro"></i> Unsplash!</a></p>
          <a class="btn btn-dark btn-xl js-scroll-trigger" href="#services"><i class="far fa-function"></i> In Function Library</a>
        </div>
      </div>
    </div>
  </section>
  <!-- Services -->
  <section class="content-section bg-primary text-white text-center" id="services">
    <div class="container">
      <div class="content-section-heading">
        <h3 class="text-secondary mb-0">Services</h3>
        <h2 class="mb-5"><i class="far fa-function"></i> In Function Library</h2>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
          <span class="service-icon rounded-circle mx-auto mb-3">
            <i class="icon-screen-smartphone"></i>
          </span>
          <h4>
            <strong>Responsive</strong>
          </h4>
          <p class="text-faded mb-0">Looks great on any screen size!</p>
        </div>
        <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
          <span class="service-icon rounded-circle mx-auto mb-3">
            <i class="icon-pencil"></i>
          </span>
          <h4>
            <strong>Spring FrameWork</strong>
          </h4>
          <p class="text-faded mb-0">Logic Designed for Spring Framework.</p>
        </div>
        <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
          <span class="service-icon rounded-circle mx-auto mb-3">
            <i class="fab fa-js-square"></i>
          </span>
          <h4>
            <strong>Java & Javascript</strong>
          </h4>
          <p class="text-faded mb-0">3 Billions Devices of users
            <i class="fas fa-heart"></i>
            Java And Back-End Stack!</p>
        </div>
        <div class="col-lg-3 col-md-6">
          <span class="service-icon rounded-circle mx-auto mb-3">
            <i class="fas fa-database"></i>
          </span>
          <h4>
            <strong>Oracle And Relration Database</strong>
          </h4>
          <p class="text-faded mb-0">Database System Engineering In Oracle, SQL Server, MySql, PostgreSQL</p>
        </div>
      </div>
    </div>
  </section>
  <!-- Portfolio -->
  <section class="content-section" id="portfolio">
    <div class="container">
      <div class="content-section-heading text-center">
        <h3 class="text-secondary mb-0">Portfolio</h3>
        <h2 class="mb-5"><i class="fab fa-bootstrap"></i> Projects</h2>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6">
          <a class="portfolio-item" href="<c:url value="/board/main/"/>" >
            <span class="caption">
              <span class="caption-content">
                <h2>Board</h2>
                <p class="mb-0">Free Board_.</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-1.jpg" />" alt="image1">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="https://anicoboard.tistory.com/">
            <span class="caption">
              <span class="caption-content">
                <h2>Bloging</h2>
                <p class="mb-0">In Tistory Blog_.</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-2.jpg" />" alt="image2">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="#">
            <span class="caption">
              <span class="caption-content">
                <h2>Strawberries</h2>
                <p class="mb-0">Strawberries are such a tasty snack, especially with a little sugar on top!</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-3.jpg" />" alt="image3">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="#">
            <span class="caption">
              <span class="caption-content">
                <h2>Workspace</h2>
                <p class="mb-0">A yellow workspace with some scissors, pencils, and other objects.</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-4.jpg" />" alt="image4">
          </a>
        </div>
      </div>
    </div>
  </section>
  <!-- Call to Action -->
  <section class="content-section bg-primary text-white">
    <div class="container text-center">
      <h2 class="mb-4">The buttons below are impossible to resist...</h2>
      <a href="#" class="btn btn-xl btn-light mr-4">Click Me!</a>
      <a href="#" class="btn btn-xl btn-dark">Look at Me!</a>
    </div>
  </section>
  <!-- Map -->
  <section id="contact" class="map">
  	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3894.9617660486956!2d127.03512035316923!3d37.64622091024945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbeaa635419c9%3A0x2fea4b6a0f2a70aa!2z7ISc7Jq47Yq567OE7IucIOuPhOu0ieq1rCDssL3rj5kg64-E67SJ66GcMTEy6ri4!5e0!3m2!1sko!2skr!4v1571402334132!5m2!1sko!2skr" 
  	 width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    <br />
    <small>
      <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
    </small>
  </section>
  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <h2>Here, Programing Stack</h2>
      <hr>
      <ul class="list-inline mb-5">
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="https://www.oracle.com/technetwork/java/javase/downloads/index.html"  target="_blank">
            <i class="fab fa-java"></i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="https://developer.mozilla.org/ko/docs/Web/JavaScript"  target="_blank">
            <i class="fab fa-js-square"></i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="https://www.php.net/"  target="_blank">
            <i class="fab fa-php"></i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="https://www.oracle.com/kr/index.html"  target="_blank">
            <i class="fas fa-server"></i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white" href="https://github.com/highwindLeos" target="_blank">
            <i class="icon-social-github"></i>
          </a>
        </li>
      </ul>
      <p class="text-muted small mb-0">Copyright &copy; AnicoBoard 2019 [Coding By Leos]</p>
    </div>
  </footer>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
</body>
  <!-- Bootstrap core JavaScript -->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <!-- Plugin JavaScript -->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
  <!-- Custom scripts for this template -->
  <script src="<c:url value="/resources/js/stylish-portfolio.min.js" />"></script>
</html>