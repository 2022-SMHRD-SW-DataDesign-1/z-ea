<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html lang="ko">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>WoOx Travel Reservation Page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
  </head>

<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.jsp" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">글램핑&카라반</a></li>
                        <li><a href="deals.jsp">테마</a></li>
                        <li><a href="reservation.html" class="active">양도하기</a></li>
                        <li class="menu"><a href="#">커뮤니티</a>
                          <ul class="sub_menu">
                            <li class="sub"><a href="#">전체</a></li>
                            <li class="sub"><a href="#">카라반</a></li>
                            <li class="sub"><a href="#">글램핑</a></li>
                            <li class="sub"> <a href="#">리뷰</a></li>
                            <li  class="sub"> <a href="#">팁</a></li>
                          </ul> <!--sub_menu end-->
                        </li>
                    </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div class="second-page-heading">
      
    <h4>커뮤니티</h4>
    <div class="menu_sub">
      <p> <a href="#">전체</a></p> <p><a href="#">카라반</a></p><p><a href="#">글램핑</a></p> <p><a href="#">리뷰</a></p> <p><a href="#">팁</a></p>
    </div>
    
  </div>

  <section class="section_main">

    <div class="comm">
      <a href="#"><img src="./assets/images/banner-02.jpg"></a>
              
    </div>  <!--comm end-->
    <div class="comm">
      <a href="#"><img src="./assets/images/banner-03.jpg"></a>
    </div>
    <div class="comm">
      <a href="#"><img src="./assets/images/banner-01.jpg" ></a>
    </div>

    <div class="comm">
      <a href="#"><img src="./assets/images/banner-04.jpg"></a>
    </div>

    <div class="comm">
      <a href="#"><img src="./assets/images/best-01.jpg"></a>
    </div>
    <div class="comm">
      <a href="#"><img src="./assets/images/best-02.jpg"></a>

    </div>
    <div class="comm">

      <a href="#"><img src="./assets/images/best-02.jpg"></a>
    </div>
    <div class="comm">
      <a href="#"> <img src="./assets/images/best-03.jpg"></a>
    </div>
    <div class="comm">
      <a href="#"><img src="./assets/images/best-04.jpg"></a>
    </div>
  </section>  <!--section_main end-->

  <footer>
    <div class="container">
      <div class="row">
        
          <div class="fc">
            <p>Copyright © 2022  이 저작권은 제육의 아이들에 있습니다.
            <br><p>전화번호:</p> <br>   <p>e-mail:</p>
          </div>
          <br>
          <div class="footer_row">
            <p><a href="#">개인정보 | 홈페이지 약관 | 광고 및 제휴 문의 | 고객센터</a></p>
          </div>  <!--footer_row end-->
        
      </div>
    </div>
  </footer>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>

  <script>
    $(".option").click(function(){
      $(".option").removeClass("active");
      $(this).addClass("active"); 
    });s
  </script>


  </body>

</html>
