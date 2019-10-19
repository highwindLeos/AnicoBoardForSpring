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
	window.onload = function(){
		$("#alert-success").hide();
	    $("#alert-danger").hide();
	};
    
    $('input[type="password"]').keyup(function(){
    	
        let password1 = $("#password1").val();
        let password2 = $("#password2").val();
        
        console.log(password1);
        console.log(password2);
        
        if(password1 != "" || password2 != ""){
            if(password1 == password2){
                $("#alert-success").show();
                $("#alert-danger").hide();
                $("#submit").removeAttr("disabled");
            } else {
                $("#alert-success").hide();
                $("#alert-danger").show();
                $("#submit").attr("disabled", "disabled");
            }    
        }
    });

	//회원가입
	register = () => {
		let eMail = $('#email').val();
		let passWord = $('#password').val();
		
		console.log('eMail ::' +eMail  + ' ::: password ::' + passWord);
	}
	
	//Login
	logIn = () => {
		let eMail = $('#email').val();
		let passWord = $('#password').val();
		
		console.log('eMail ::' +eMail  + ' ::: password ::' + passWord);
	}
</script>

<body id="page-top" class="backGroundNomal">
  <!-- Navigation -->
  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a class="js-scroll-trigger" href="#page-top">AnicoBoard</a>
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
      <p class="colorWhite center">Projects</p>	
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href='<c:url value="/board/main/"/>'>Board</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href='https://anicoboard.tistory.com/'><i class="fab fa-blogger"></i> Blog</a>
      </li>
    </ul>
  </nav>
  <!-- Call to Action -->
  <section class="padding10 text-white backGroundWhite">
    <div class="container-fluid right">
      <!-- Button trigger modal -->
	  <button type="button" class="btn btn-sm btn-outline-primary mr-1" data-toggle="modal" data-target="#modalRegist">
	  	Regist [회원가입]
	  </button>
	  <button type="button" class="btn btn-sm btn-outline-secondary mr-1" data-toggle="modal" data-target="#modalLogin">
	  	Login [로그인]
	  </button>
    </div>
  </section>
  <!-- Header -->
  <header class="masthead d-flex">
    <div class="container text-center my-auto">
      <h1 class="mb-1 capsule colorDarkGray">AnicoBoard Portfolio</h1>
      <div class="marginTop40"></div>
      <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">ABOUT</a>
    </div>
    <div class="overlay"></div>
  </header>
  <!-- About -->
  <section class="content-section bg-light" id="about">
    <div class="container text-center">
      <div class="row">
        <div class="col-lg-10 mx-auto">
          <h3 class="text-secondary mb-0">ABOUT</h3>
          <div class="marginTop40"></div>
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
          <p class="text-faded mb-0">Logic Designed whit Spring Framework.</p>
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
            JavaScript And Java Back-End Stack!</p>
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
        <h2 class="mb-5 colorWhite"><i class="fab fa-bootstrap"></i> Projects</h2>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6">
          <a class="portfolio-item" href="<c:url value="/board"/>" >
            <span class="caption">
              <span class="caption-content">
                <h2>Retrotory Board</h2>
                <p class="mb-0"><i class="fas fa-gamepad"></i> Retro Desing Free Board_.</p>
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
                <p class="mb-0"><i class="fab fa-blogger"></i> In Tistory Blog_.</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-2.jpg" />" alt="image2">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="<c:url value="/skill" />" >
            <span class="caption">
              <span class="caption-content">
                <h2>Coding History</h2>
                <p class="mb-0"><i class="fas fa-clipboard-list"></i> Skill Inventory Line Card_.</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-3.jpg" />" alt="image3">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="#">
            <span class="caption">
              <span class="caption-content">
                <h2>Workspace In GitHub</h2>
                <p class="mb-0"><i class="icon-social-github"></i> My Github URL_.</p>
              </span>
            </span>
            <img class="img-fluid" src="<c:url value="/resources/img/portfolio-4.jpg" />" alt="image4">
          </a>
        </div>
      </div>
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
      <h2 class="colorWhite">Here, Programing Stack!!!</h2>
      <div class="marginTop20"></div>
      	<hr>
      <div class="marginTop20"></div>
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
      <p class="small mb-0 colorWhite">Copyright &copy; AnicoBoard 2019 [Coding By Leos]</p>
    </div>
	<!-- Modal Regist -->
	<div class="modal fade" id="modalRegist" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body left">
	        <form action="" accept-charset="utf-8" name="person_info" method="POST" >
			  <div class="form-group">
			    <label for="email">Email</label>
			    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="이메일을 입력해주세요">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" id="password1" placeholder="비밀번호를 입력해주세요.">
			  </div>
			  <div class="form-group">
			    <label for="password">Password 확인</label>
			    <input type="password" class="form-control" id="password2" placeholder="확인 비밀번호를 입력해주세요.">
			  </div>
			  <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
			  <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
			  <div class="form-group form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div>
			  <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" onclick="register()">가입하기</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- Modal modalLogin -->
	<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">로그인[Log-In]</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body left">
	        <form action="" accept-charset="utf-8" name="person_info" method="POST" >
			  <div class="form-group">
			    <label for="email">Email</label>
			    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="이메일을 입력해주세요">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" id="password1" placeholder="비밀번호를 입력해주세요.">
			  </div>
			  <div class="form-group form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div>
			  <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" onclick="logIn()">Login</button>
	      </div>
	    </div>
	  </div>
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